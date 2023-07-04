import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:whatelse_server/src/model/exception.dart';

enum JsonWebTokenAlgorithm {
  hMacSha256('HS256');

  factory JsonWebTokenAlgorithm.fromConfig(String value) {
    switch (value) {
      case 'HS256':
        return hMacSha256;
      default:
        throw InvalidTokenException('The algorithm of the token is not supported.');
    }
  }

  const JsonWebTokenAlgorithm(this.value);
  final String value;

  @override
  String toString() => value;

  Digest Function(List<int>) digestAlg(String secret) {
    switch (this) {
      case hMacSha256:
        return Hmac(sha256, utf8.encode(secret)).convert;
    }
  }
}

class JsonWebTokenHeader {
  final JsonWebTokenAlgorithm algorithm;
  final String type = 'JWT';

  JsonWebTokenHeader({
    required this.algorithm,
  });

  factory JsonWebTokenHeader.fromRaw(String raw) {
    try {
      // pad the raw token with '=' to make it a valid base64 string
      raw = raw.padRight(raw.length + (4 - raw.length % 4) % 4, '=');
      final decoded = jsonDecode(utf8.decode(base64Decode(raw)));
      final algorithm = JsonWebTokenAlgorithm.fromConfig(decoded['alg']);
      return JsonWebTokenHeader(algorithm: algorithm);
    } on FormatException catch (e) {
      throw InvalidTokenException(e.message);
    }
  }

  factory JsonWebTokenHeader.fromExpired(String raw) {
    try {
      // pad the raw token with '=' to make it a valid base64 string
      raw = raw.padRight(raw.length + (4 - raw.length % 4) % 4, '=');
      final decoded = jsonDecode(utf8.decode(base64Decode(raw)));
      final algorithm = JsonWebTokenAlgorithm.fromConfig(decoded['alg']);
      return JsonWebTokenHeader(algorithm: algorithm);
    } on FormatException catch (e) {
      throw InvalidTokenException(e.message);
    }
  }

  @override
  String toString() => base64UrlEncode(utf8.encode(jsonEncode({
    'alg': algorithm.value,
    'typ': type,
  }))).replaceAll('=', '');
}

class JsonWebTokenPayload {
  final DateTime createdAt;
  final DateTime expiresAt;
  final int userClaim;
  final Map<String, String> extraClaims;

  JsonWebTokenPayload({
    required this.createdAt,
    required this.expiresAt,
    required this.userClaim,
    Map<String, String>? extraClaims,
  }): extraClaims = extraClaims ?? {};

  factory JsonWebTokenPayload.fromRaw(String raw) {
    try {
      // pad the raw token with '=' to make it a valid base64 string
      raw = raw.padRight(raw.length + (4 - raw.length % 4) % 4, '=');
      final decoded = jsonDecode(utf8.decode(base64Decode(raw))) as Map<String, dynamic>;
      final createdAt = DateTime.fromMillisecondsSinceEpoch(decoded['iat']);
      final expiresAt = DateTime.fromMillisecondsSinceEpoch(decoded['exp']);
      if (DateTime.now().isAfter(expiresAt)) {
        throw ExpiredTokenException(expiresAt);
      }
      final userClaim = decoded['user'];
      if (userClaim == null) {
        throw InvalidTokenException('The user claim is not an integer.');
      }
      final extraClaims = decoded.entries.fold(
        <String, String>{},
        (claims, entry) {
          if (entry.key != 'iat' && entry.key != 'exp' && entry.key != 'user') {
            return claims..[entry.key.toString()] = entry.value.toString();
          }
          return claims;
        },
      );
      return JsonWebTokenPayload(
        createdAt: createdAt,
        expiresAt: expiresAt,
        userClaim: userClaim,
        extraClaims: extraClaims,
      );
    } on FormatException catch (e) {
      throw InvalidTokenException(e.message);
    }
  }

  factory JsonWebTokenPayload.fromExpired(String raw) {
    try {
      // pad the raw token with '=' to make it a valid base64 string
      raw = raw.padRight(raw.length + (4 - raw.length % 4) % 4, '=');
      final decoded = jsonDecode(utf8.decode(base64Decode(raw))) as Map<String, dynamic>;
      final createdAt = DateTime.fromMillisecondsSinceEpoch(decoded['iat']);
      final expiresAt = DateTime.fromMillisecondsSinceEpoch(decoded['exp']);
      final userClaim = decoded['user'];
      if (userClaim == null) {
        throw InvalidTokenException('The user claim is not an integer.');
      }
      final extraClaims = decoded.entries.fold(
        <String, String>{},
        (claims, entry) {
          if (entry.key != 'iat' && entry.key != 'exp' && entry.key != 'user') {
            return claims..[entry.key.toString()] = entry.value.toString();
          }
          return claims;
        },
      );
      return JsonWebTokenPayload(
        createdAt: createdAt,
        expiresAt: expiresAt,
        userClaim: userClaim,
        extraClaims: extraClaims,
      );
    } on FormatException catch (e) {
      throw InvalidTokenException(e.message);
    }
  }

  @override
  String toString() => base64UrlEncode(utf8.encode(jsonEncode({
    'iat': createdAt.millisecondsSinceEpoch,
    'exp': expiresAt.millisecondsSinceEpoch,
    'user': userClaim,
    ...extraClaims,
  }))).replaceAll('=', '');
}

class JsonWebTokenSignature {
  final JsonWebTokenHeader header;
  final JsonWebTokenPayload payload;
  final String secret;

  JsonWebTokenSignature({
    required this.header,
    required this.payload,
    required this.secret,
  });

  @override
  String toString() {
    final signature = utf8.encode('$header.$payload');
    final digestAlgorithm = header.algorithm.digestAlg(secret);
    final digest = digestAlgorithm(signature);
    return base64UrlEncode(digest.bytes).replaceAll('=', '');
  }
}

/// A JSON Web Token
/// 
/// The token is stored 
class JsonWebToken {
  static void verifyRaw(String raw, {required String secret}) {
    final parts = raw.split('.');
    if (parts.length != 3) {
      throw InvalidTokenException('The token does not conform to the JWT format.');
    }
    final header = JsonWebTokenHeader.fromRaw(parts[0]);
    final payload = JsonWebTokenPayload.fromRaw(parts[1]);
    final signature = JsonWebTokenSignature(
      header: header,
      payload: payload,
      secret: secret,
    );
    if (signature.toString() != parts[2]) {
      throw InvalidTokenException('The calculated signature does not match the signature in the token.');
    }
  }

  static JsonWebToken renew(String raw, {
    required Duration duration,
    required String secret,
  }) {
    final expiredToken = JsonWebToken.fromExpired(raw, secret: secret);
    final newPayload = JsonWebTokenPayload(
      createdAt: DateTime.now(),
      expiresAt: DateTime.now().add(duration),
      userClaim: expiredToken.payload.userClaim,
      extraClaims: expiredToken.payload.extraClaims,
    );
    return JsonWebToken(
      header: expiredToken.header,
      payload: newPayload,
      secret: secret,
    );
  }

  /// The header of the token
  final JsonWebTokenHeader header;
  /// The payload of the token
  final JsonWebTokenPayload payload;
  /// The signature of the token
  final JsonWebTokenSignature signature;

  /// Creates a [JsonWebToken] from the [header], [payload], and [signature]
  /// 
  /// The correspondance between the [header], [payload], and [signature] should
  /// be enforced by invoker, the function will **not** check that correspondance.
  JsonWebToken._fromRawParts({
    required this.header,
    required this.payload,
    required this.signature,
  });

  /// Generates a new [JsonWebToken] with the given [header] and [payload]
  /// 
  /// The [header] and [payload] are used to generate the [signature]
  factory JsonWebToken({
    required header,
    required payload,
    required secret,
  }) {
    final signature = JsonWebTokenSignature(
      header: header,
      payload: payload,
      secret: secret,
    );
    return JsonWebToken._fromRawParts(
      header: header,
      payload: payload,
      signature: signature,
    );
  }

  /// Creates a [JsonWebToken] from a raw [token] string
  /// 
  /// If the [token] does not conform to the JWT format, an [InvalidTokenException] is thrown.
  /// For example, if the [token] is missing a period, or if it has more than 3 parts.
  /// 
  /// The [header] and [payload] parts will be used to construct a new [signature], which is
  /// further used to verify the integrity of the [token].
  /// 
  /// If the [signature] part does not match the calculated signature, an [InvalidTokenException] is thrown.
  /// If the [token] has expired, an [ExpiredTokenException] is thrown.
  factory JsonWebToken.fromRaw(String token, {required String secret}) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw InvalidTokenException('The token does not conform to the JWT format.');
    }
    final header = JsonWebTokenHeader.fromRaw(parts[0]);
    final payload = JsonWebTokenPayload.fromRaw(parts[1]);
    final signature = JsonWebTokenSignature(
      header: header,
      payload: payload,
      secret: secret,
    );
    if (parts[2] != signature.toString()) {
      throw InvalidTokenException('The calculated signature does not match the signature in the token.');
    }
    return JsonWebToken._fromRawParts(
      header: header,
      payload: payload,
      signature: signature,
    );
  }

  factory JsonWebToken.fromExpired(String raw, {required String secret}) {
    final parts = raw.split('.');
    if (parts.length != 3) {
      throw InvalidTokenException('The token does not conform to the JWT format.');
    }
    final header = JsonWebTokenHeader.fromExpired(parts[0]);
    final payload = JsonWebTokenPayload.fromExpired(parts[1]);
    final signature = JsonWebTokenSignature(
      header: header,
      payload: payload,
      secret: secret,
    );
    if (parts[2] != signature.toString()) {
      throw InvalidTokenException('The calculated signature does not match the signature in the token.');
    }
    return JsonWebToken._fromRawParts(
      header: header,
      payload: payload,
      signature: signature,
    );
  }

  /// The raw value of the token
  /// 
  /// Composed of the [header], [payload], and [signature], separated by a period
  @override
  String toString() => '$header.$payload.$signature';
}
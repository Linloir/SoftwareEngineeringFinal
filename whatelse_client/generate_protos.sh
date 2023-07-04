# Compile all the proto files in the /proto directory
echo "[INFO] Compiling protos..."
protoc -Ilib/generated/grpc/protos $(find lib/generated/grpc/protos -iname "*.proto") --dart_out=grpc:lib/generated/grpc/src
echo "[INFO] Done."
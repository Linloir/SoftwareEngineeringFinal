# Compile all the proto files in the /proto directory
echo "[INFO] Compiling protos..."
protoc -Ilib/protos $(find lib/protos -iname "*.proto") --dart_out=grpc:lib/src/generated/grpc
echo "[INFO] Done."

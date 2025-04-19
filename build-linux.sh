mkdir -p build
rm -rf build/*
mkdir -p debug
rm -rf debug/*
if ! docker image inspect flutter-linux > /dev/null 2>&1; then
    echo "flutter-linux image not found. Building image..."
    docker build -f Dockerfile.flutter-linux -t flutter-linux .
else
    echo "flutter-linux image already exists"
fi
echo "Removing flutter image"
docker rmi flutter
echo "Building flutter image"
docker build -f Dockerfile.flutter -t flutter ..
echo "Running flutter image"
docker run --rm \
-v $(pwd)/build:/app/build/linux/x64/release/bundle \
-v $(pwd)/debug:/tmp \
flutter
chmod -R 777 build
chmod -R 777 debug
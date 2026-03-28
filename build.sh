docker buildx build --platform linux/amd64 \
  -f linux-x86_64/Dockerfile \
  -t ghcr.io/kelvinwu602/devcontainer/linux-x86_64:latest \
  --push .

docker buildx build --platform linux/386 \
  -f linux-x86_32/Dockerfile \
  -t ghcr.io/kelvinwu602/devcontainer/linux-x86_32:latest \
  --push .

docker buildx build --platform linux/arm64 \
  -f linux-arm_64/Dockerfile \
  -t ghcr.io/kelvinwu602/devcontainer/linux-arm_64:latest \
  --push .

docker buildx build --platform linux/arm/v7 \
  -f linux-arm_32/Dockerfile \
  -t ghcr.io/kelvinwu602/devcontainer/linux-arm_32:latest \
  --push .
build-iso:
  mkdir -p iso-output
  sudo podman run --rm --privileged \
    --volume ./iso-output:/build-container-installer/build \
    --security-opt label=disable \
    --pull=newer \
    ghcr.io/jasonn3/build-container-installer:latest \
    IMAGE_REPO=ghcr.io/dz4k \
    IMAGE_NAME=biber-os \
    IMAGE_TAG=latest \
    VARIANT=Silverblue

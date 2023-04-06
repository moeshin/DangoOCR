#!/usr/bin/env bash

image=moeshin/dango-ocr
image_tag="$image:$(git log -1 --pretty=format:%h)"

docker build -t "$image" . && docker push "$image"
docker tag "$image" "$image_tag" && docker push "$image_tag"

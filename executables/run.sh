#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../configuration/const.sh"

docker run \
  --cpus="1" \
  --memory="256m" \
  --user 2020:2020 \
  --rm \
  --name "${IMAGE}" \
  --hostname "${IMAGE}" \
  -d -p ${HOST_PORT}:${CNTR_PORT} \
  -v "${HOST_MICROSERVICE_DIR}":""${CNTR_MICROSERVICE_DIR}"/" \
   "${IMAGE_TAG}" "${FATJAR}" "${CONFIG}" "${JAVA_IO_DIR}"
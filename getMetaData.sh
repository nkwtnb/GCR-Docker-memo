#!/bin/bash
set -e

METADATA_URL="http://metadata.google.internal/computeMetadata/v1/instance/attributes/$1"
METADATA_HEADER="Metadata-Flavor: Google"

response=$(curl -fsSL -H "${METADATA_HEADER}" "${METADATA_URL}" || true)

if [ -z "$response" ]; then
  echo "Failed to retrieve metadata from ${METADATA_URL}"
  exit 1
else
  echo $response
fi
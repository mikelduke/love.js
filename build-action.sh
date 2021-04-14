#!/bin/sh

echo "-- LOVE JS build parameters --"
echo "App name: ${INPUT_TITLE}"
echo "---------------------------"
echo "Source file: ${INPUT_SOURCE_FILE}"
echo "Result directory: ${INPUT_RESULT_DIR}"
echo "Memory: ${INPUT_MEMORY}"
echo "---------------------------"


SOURCE_FILE=${GITHUB_WORKSPACE}/$INPUT_SOURCE_FILE
RESULT_DIR=${GITHUB_WORKSPACE}/$INPUT_RESULT_DIR

mkdir -p "${RESULT_DIR}"

love-js -c -t $INPUT_TITLE -m $INPUT_MEMORY $SOURCE_FILE $RESULT_DIR
echo "::set-output name=love-js-output::${INPUT_RESULT_DIR}"

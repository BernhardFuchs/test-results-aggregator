#!/usr/bin/env sh

echo "#### Aggregate Test Results ####"

sh -c "echo $*"

echo "$INPUT_REPO"
echo "$INPUT_BRANCH"
echo "$INPUT_RESULTS_FOLDER"

git clone "$INPUT_REPO"
cd "$(basename "$INPUT_REPO" ".${INPUT_REPO##*.}")" || exit
git checkout -b "$INPUT_BRANCH"

cp /smoke-tests/*.json ./test-results/
ls -al test-results
git add /test-results/.
git commit -m "bot: CI smoke test results"
git push origin "$INPUT_BRANCH"
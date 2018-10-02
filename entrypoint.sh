#!/bin/sh

set -e

echo
echo
echo "### Environment"
echo
echo
env | sort -f
for f in $(find .. -name '*json'); do
  echo
  echo
  echo "### $f"
  cat "$f" | jq # run through jq to pretty print
done

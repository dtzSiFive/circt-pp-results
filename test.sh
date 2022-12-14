#!/bin/sh

# Just build and add the result of running and diff'ing outputs.
# Add to git for easy showing publicly.

set -euo pipefail

nix build github:dtzSiFive/circt-test-flake -L -o out --refresh

rm -rf results
cp -Lr out/ results
rm out
chmod u+rw -R results

git add results

git commit -v -m "Add latest results."


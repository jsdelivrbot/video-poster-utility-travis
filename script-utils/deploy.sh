#!/bin/bash
if [ "$TRAVIS_BRANCH" == "master" ]; then
  echo "Running integration tests"
  yarn run test-integration
else
  echo "Integration test skipped"
fi
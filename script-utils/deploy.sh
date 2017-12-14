#!/bin/bash
if [ "$TRAVIS_BRANCH" == "master" ]; then
  yarn run test-integration
fi
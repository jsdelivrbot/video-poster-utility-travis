#!/bin/bash
if [ "$TRAVIS_BRANCH" == "master" ]; then
  echo "Running integration tests"
  COMPILE_RESULT=0 ; yarn run test-integration || COMPILE_RESULT=$?; expr $COMPILE_RESULT != 0
  #[ $COMPILE_RESULT -ge 2 ] && echo makefile error
  echo
  if [ "$COMPILE_RESULT" == "1" ]; then
    travis_terminate
  fi
else
  echo "Integration test skipped"
fi
#!/bin/sh

echo "detect_test.sh running"

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testDetectGradlew()
{

  touch ${BUILD_DIR}/gradlew
  touch ${BUILD_DIR}/bower.json
  touch ${BUILD_DIR}/package.json

  detect
  assertAppDetected "GradleBower"
}

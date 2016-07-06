#!/bin/sh

echo "detect_test.sh running"

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testDetectGradlew()
{

  touch ${BUILD_DIR}/backend/build.gradle
  touch ${BUILD_DIR}/frontend/package.json

  detect
  assertAppDetected "GradleNpm"
}

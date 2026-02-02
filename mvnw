#!/usr/bin/env sh
# ----------------------------------------------------------------------------
# Maven Wrapper
# ----------------------------------------------------------------------------
set -e
MAVEN_PROJECTBASEDIR=`dirname "$0"`/.
if [ -z "$MAVEN_PROJECTBASEDIR" ]; then
  MAVEN_PROJECTBASEDIR=.
fi
MAVEN_PROJECTBASEDIR=`cd "$MAVEN_PROJECTBASEDIR" && pwd`

WRAPPER_DIR="$MAVEN_PROJECTBASEDIR/.mvn/wrapper"
JAR_FILE="$WRAPPER_DIR/maven-wrapper.jar"

if [ ! -f "$JAR_FILE" ]; then
  echo "Maven wrapper not found, downloading..."
  mkdir -p "$WRAPPER_DIR"
  # attempt to download wrapper jar
  if command -v curl >/dev/null 2>&1; then
    curl -sSfL -o "$JAR_FILE" "https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar"
  else
    if command -v wget >/dev/null 2>&1; then
      wget -q -O "$JAR_FILE" "https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar"
    else
      echo "Neither curl nor wget found to download maven-wrapper.jar. Please download it manually to $JAR_FILE"
      exit 1
    fi
  fi
fi

exec java -Dmaven.multiModuleProjectDirectory="$MAVEN_PROJECTBASEDIR" -cp "$JAR_FILE" org.apache.maven.wrapper.MavenWrapperMain "$@"

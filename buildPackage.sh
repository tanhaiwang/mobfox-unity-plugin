#!/bin/sh

WORKDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
UNITY_BIN="/Applications/Unity/Unity.app/Contents/MacOS/Unity"
EXPORT_PATH="${WORKDIR}/MobFox_Unity.unitypackage"
PROJECT_PATH="${WORKDIR}/MobFox_Unity"
ASSETS_PATH="Assets"

$UNITY_BIN -batchmode -quit \
-logFile export.log \
-projectPath $PROJECT_PATH \
-exportPackage $ASSETS_PATH $EXPORT_PATH
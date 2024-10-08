#!/bin/bash

# This script initializes the cloned iPlug2OOS repo, downloading dependencies, and tools

echo "Initializing submodule..."
git submodule update --init --recursive

echo "Downloading iPlug2 SDKs..."
cd iPlug2/Dependencies/IPlug/
./download-iplug-sdks.sh
cd ../../..

echo "Downloading iPlug2 prebuilt libs..."
cd iPlug2/Dependencies/
./download-prebuilt-libs.sh
cd ../..

echo "checkout nam Core git"
cd NeuralAmpModeler/NeuralAmpModelerCore/
git checkout dspStruct
cd ../..
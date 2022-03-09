#!/bin/sh
# yum install android-tools -y
cd /root/
yum install java-1.8.0-openjdk-devel
mkdir -p android-sdk-linux
cd android-sdk-linux
# @see https://developer.android.com/studio/index.html
wget --output-document=android-sdk.zip --quiet https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip
unzip android-sdk.zip
rm -f android-sdk.zip
yes | tools/bin/sdkmanager --licenses
export ANDROID_HOME=$root/android-sdk-linux
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

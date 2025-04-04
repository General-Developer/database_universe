#!/bin/bash

if [ -z "$DATABASE_UNIVERSE_VERSION" ]; then
    echo "DATABASE_UNIVERSE_VERSION is not set";
    exit 2;
fi

github="https://github.com/azkadev/database_universe/releases/download/main-$DATABASE_UNIVERSE_VERSION"


curl "${github}/libdatabase_universe_android_arm64.so" -o package/database_universe_flutter_libs/android/src/main/jniLibs/arm64-v8a/libdatabase_universe.so --create-dirs -L -f
curl "${github}/libdatabase_universe_android_armv7.so" -o package/database_universe_flutter_libs/android/src/main/jniLibs/armeabi-v7a/libdatabase_universe.so --create-dirs -L -f
curl "${github}/libdatabase_universe_android_x64.so" -o package/database_universe_flutter_libs/android/src/main/jniLibs/x86_64/libdatabase_universe.so --create-dirs -L

curl "${github}/database_universe_ios.xcframework.zip" -o package/database_universe_flutter_libs/ios/database_universe_ios.xcframework.zip --create-dirs -L -f
unzip -o package/database_universe_flutter_libs/ios/database_universe_ios.xcframework.zip -d package/database_universe_flutter_libs/ios
rm package/database_universe_flutter_libs/ios/database_universe_ios.xcframework.zip

curl "${github}/libdatabase_universe_macos.dylib" -o package/database_universe_flutter_libs/macos/libdatabase_universe.dylib --create-dirs -L -f
curl "${github}/libdatabase_universe_linux_x64.so" -o package/database_universe_flutter_libs/linux/libdatabase_universe.so --create-dirs -L -f
curl "${github}/database_universe_windows_x64.dll" -o package/database_universe_flutter_libs/windows/database_universe.dll --create-dirs -L -f

curl "${github}/database_universe.wasm" -o database_universe.wasm -L -f
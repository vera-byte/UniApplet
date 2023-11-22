#!/bin/bash

# 确保脚本在出现错误时终止
set -e

# 清除 Flutter 缓存
echo "Cleaning Flutter build..."
cd example
flutter clean

# 获取依赖
echo "Getting packages..."
flutter pub get

# 进入 iOS 目录
cd ios

# 清除 CocoaPods 缓存
echo "Cleaning CocoaPods..."
rm -rf Pods
rm -rf Podfile.lock
pod cache clean --all
pod deintegrate
pod setup
pod install

# 返回到项目根目录
cd ..

# 清除 Xcode 缓存
echo "Cleaning Xcode Derived Data..."
rm -rf ~/Library/Developer/Xcode/DerivedData/


echo "Cache clean complete!"

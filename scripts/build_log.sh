#!/bin/bash

# 确保脚本在出现错误时终止
set -e

cd ios
pod lib lint --verbose >> ../BuildLog/info.log
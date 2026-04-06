#!/bin/bash
if [ -d "hardware/mediatek/aidl/power-mediatek" ]; then
  rm -rf hardware/mediatek
  git clone https://github.com/abdulla-li/android_hardware_mediatek -b lineage-23.2 hardware/mediatek
fi
if [ ! -d "hardware/mediatek" ]; then
  git clone https://github.com/abdulla-li/android_hardware_mediatek -b lineage-23.2 hardware/mediatek
fi
if [ ! -d "vendor/nothing/Tetris" ]; then
  git clone https://gitlab.com/abdullashakkeeb693/tetris_vendor_tree -b a15 vendor/nothing/Tetris
fi
if [ ! -d "device/nothing/Tetris-kernel" ]; then
  git clone https://github.com/abdulla-li/android_device_nothing_Tetris-kernel -b v3.2 device/nothing/Tetris-kernel
fi

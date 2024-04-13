echo 'Starting to clone stuffs needed for RMX2020'
echo 'Cloning Kernel tree [1/7]'
# Kernel
rm -rf kernel/realme/RMX2020
if [ ! -d "kernel/realme/RMX2020" ]; then
    mkdir -p kernel/realme/RMX2020
    git clone --depth=1 https://github.com/ProjectElixir-Devices/kernel_realme_RMX2020 -b UNO-RUI2-OSS kernel/realme/RMX2020
fi

echo 'Cloning Vendor blobs [2/7]'
# Vendor
rm -rf vendor/realme/RMX2020
if [ ! -d "vendor/realme/RMX2020" ]; then
    mkdir -p vendor/realme/RMX2020
    git clone https://github.com/ProjectElixir-Devices/vendor_realme_RMX2020 -b UNO vendor/realme/RMX2020
fi

echo 'Cloning Vendor-ims blobs [3/7]'
# Vendor-ims
rm -rf vendor/realme/RMX2020-ims
if [ ! -d "vendor/realme/RMX2020-ims" ]; then
    mkdir -p vendor/realme/RMX2020
    git clone https://github.com/ProjectElixir-Devices/vendor_realme_RMX2020-ims -b UNO vendor/realme/RMX2020-ims
fi

echo 'Cloning Mediatek Hardware [4/7]'
# Hardware
rm -rf hardware/mediatek
if [ ! -d "hardware/mediatek" ]; then
    mkdir -p hardware/mediatek
    git clone https://github.com/LineageOS/android_hardware_mediatek -b lineage-21 hardware/mediatek
fi

echo 'Cloning Mediatek SEpolicy [5/7]'
# SEpolicy
rm -rf device/mediatek/sepolicy_vndr
if [ ! -d "device/mediatek/sepolicy_vndr" ]; then
    mkdir -p device/mediatek/sepolicy_vndr
    git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr -b lineage-21 device/mediatek/sepolicy_vndr
fi

echo 'Cloning AOSP Clang 18.0.0 [6/7]'
# Clang
rm -rf prebuilts/clang/host/linux-x86/clang-r510928
if [ ! -d "prebuilts/clang/host/linux-x86/clang-r510928" ]; then
    mkdir -p prebuilts/clang/host/linux-x86/clang-r510928
    git clone https://gitlab.com/projectelixiros/android_prebuilts_clang_host_linux-x86_clang-r510928 prebuilts/clang/host/linux-x86/clang-r510928
fi

echo 'Cloning ViPER4AndroidFX [7/7]'
# ViPER4AndroidFX
rm -rf packages/apps/ViPER4AndroidFX
if [ ! -d "packages/apps/ViPER4AndroidFX" ]; then
    mkdir -p packages/apps/ViPER4AndroidFX
    git clone https://github.com/Koushikdey2003/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX
fi

echo 'Completed, Now proceeding to lunch'

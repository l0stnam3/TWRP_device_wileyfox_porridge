#!/bin/bash

cd ../../..
cd bootable/recovery
git apply -v ../../device/wileyfox/porridge/01-twrp_recovery_mtk.patch
cd ../..

echo Patches For MTK applied successfully

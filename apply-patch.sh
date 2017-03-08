#!/bin/bash

cd ../../..
cd bootable/recovery
git apply -v ../../device/MTS/SMART_Surf_4G/01-twrp_recovery_mtk.patch
cd ../..

echo Patches For MTK applied successfully

TWRP device tree for Wileyfox Spark/Spark+ (c) hyperion70 - 2017

Для сборки recovery TWRP 3.1.x.x в исходниках СМ 
заменить bootable/recovery на соответствующую из omirom

	$ cd $(LOCAL_DIR)/device/wileyfox/porridge
	$ . apply-patch.sh

	$ . build/envsetup.sh
	$ lunch cm_porridge-userdebug
	$ make clean
	$ make recoveryimage 



# Copyright (C) 2018 Pixys OS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

PRODUCT_PACKAGES += \
    bootanimation.zip

# Bootanimation
ifeq ($(TARGET_BOOT_ANIMATION_RES),720)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

else ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)

TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

else ifeq ($(TARGET_BOOT_ANIMATION_RES),1440)

TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

else
    $(error "Bootanimation: TARGET_BOOT_ANIMATION_RES is undefined")
endif

# Copyright (C) 2017 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt Packages
PRODUCT_PACKAGES += \
    WallpaperPickerGooglePrebuilt

# Boot Animation
ether_device := $(patsubst %f,%,$(subst ether_,,$(TARGET_PRODUCT)))

ifneq ($(filter mido vince,$(ether_device)),)
     scr_resolution := 1080x1920
else ifneq ($(filter enchilada beryllium, $(ether_device)),)
     scr_resolution := 1080x2280
else
    $(warning "etherExtras: bootanimation resolution is undefined, assuming 1080p")
    scr_resolution := 1080x1920
endif

ifneq ($(wildcard vendor/etherextras/media/$(scr_resolution).zip),)
PRODUCT_COPY_FILES += \
    vendor/etherextras/media/$(scr_resolution).zip:system/media/bootanimation.zip
endif

# Fonts
PRODUCT_COPY_FILES += \
    vendor/etherextras/fonts/GoogleSans-Regular.ttf:system/fonts/GoogleSans-Regular.ttf \
    vendor/etherextras/fonts/GoogleSans-Medium.ttf:system/fonts/GoogleSans-Medium.ttf \
    vendor/etherextras/fonts/GoogleSans-MediumItalic.ttf:system/fonts/GoogleSans-MediumItalic.ttf \
    vendor/etherextras/fonts/GoogleSans-Italic.ttf:system/fonts/GoogleSans-Italic.ttf \
    vendor/etherextras/fonts/GoogleSans-Bold.ttf:system/fonts/GoogleSans-Bold.ttf \
    vendor/etherextras/fonts/GoogleSans-BoldItalic.ttf:system/fonts/GoogleSans-BoldItalic.ttf

ADDITIONAL_FONTS_FILE := vendor/etherextras/fonts/google-sans.xml

# Include package overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/etherextras/overlay
DEVICE_PACKAGE_OVERLAYS += \
    vendor/etherextras/overlay/common/

# Omni Poor Man Themes
PRODUCT_PACKAGES += \
    DocumentsUITheme \
    DialerTheme \
    TelecommTheme

 PRODUCT_PACKAGES += \
    NotificationsBlack \
    NotificationsDark \
    NotificationsLight \
    NotificationsPrimary

 PRODUCT_PACKAGES += \
    AccentSluttyPink \
    AccentPixel \
    AccentGoldenShower \
    AccentDeepOrange \
    AccentOmni \
    AccentWhite \
    AccentTeal \
    AccentFromHell \
    AccentBlueMonday \
    AccentSmokingGreen \
    AccentDeadRed \
    AccentRottenOrange \
    AccentDeepPurple

 PRODUCT_PACKAGES += \
    PrimaryAlmostBlack \
    PrimaryBlack \
    PrimaryOmni \
    PrimaryWhite \
    PrimaryColdWhite \
    PrimaryWarmWhite \
    PrimaryDarkBlue

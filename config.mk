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
serein_device := $(patsubst %f,%,$(subst serein_,,$(TARGET_PRODUCT)))

ifneq ($(filter mido vince,$(serein_device)),)
     scr_resolution := 1080x1920
else ifneq ($(filter enchilada beryllium, $(serein_device)),)
     scr_resolution := 1080x2280
else
    $(warning "sereinExtras: bootanimation resolution is undefined, assuming 1080p")
    scr_resolution := 1080x1920
endif

ifneq ($(wildcard vendor/sereinextras/media/$(scr_resolution).zip),)
PRODUCT_COPY_FILES += \
    vendor/sereinextras/media/$(scr_resolution).zip:system/media/bootanimation.zip
endif

# Fonts
PRODUCT_COPY_FILES += \
    vendor/sereinextras/fonts/GoogleSans-Regular.ttf:system/fonts/GoogleSans-Regular.ttf \
    vendor/sereinextras/fonts/GoogleSans-Medium.ttf:system/fonts/GoogleSans-Medium.ttf \
    vendor/sereinextras/fonts/GoogleSans-MediumItalic.ttf:system/fonts/GoogleSans-MediumItalic.ttf \
    vendor/sereinextras/fonts/GoogleSans-Italic.ttf:system/fonts/GoogleSans-Italic.ttf \
    vendor/sereinextras/fonts/GoogleSans-Bold.ttf:system/fonts/GoogleSans-Bold.ttf \
    vendor/sereinextras/fonts/GoogleSans-BoldItalic.ttf:system/fonts/GoogleSans-BoldItalic.ttf

ADDITIONAL_FONTS_FILE := vendor/sereinextras/fonts/google-sans.xml

# Include package overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/sereinextras/overlay
DEVICE_PACKAGE_OVERLAYS += \
    vendor/sereinextras/overlay/common/

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

# Ambient play history
 PRODUCT_PACKAGES += \
    AmbientPlayHistoryProvider

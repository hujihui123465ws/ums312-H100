# Android device tree for EEBBK S1W (H100)

This Unisoc tree uses the `twrp-12.1` TWRP source
branch for Android 9. Build it with lunch
target `twrp_H100-eng`.
The required source overlay is under `prebuilt/sourcecode`; run `./patch.sh`
there before building and `./recovery.sh` after the build to restore the
original files.
The original SELinux policy is retained unchanged in `recovery/root/sepolicy`.
Because this tree builds a standalone `recovery.img`, its generated kernel
command line includes `androidboot.selinux=permissive`. This image is not used
for normal Android boot, so the override cannot affect the stock boot image.
The UMS legacy DRM modeset overlay is included.

```
#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
```
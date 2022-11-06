#!/bin/bash

set -e

export DEVICE=victoria
export DEVICE_COMMON=hi3660-common
export VENDOR=huawei

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"

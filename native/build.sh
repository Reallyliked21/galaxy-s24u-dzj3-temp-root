#!/usr/bin/env bash
# Build the two exploit payloads used by the Galaxy S24U DZJ3 app.
# Requires: Android NDK r29 (or r26+), aarch64-linux-android34-clang.
#
#   export ANDROID_NDK_HOME=/path/to/android-ndk-r29
#   ./build.sh
#
# Outputs: libtimer_std.so, libtimer_lspd.so
set -euo pipefail
cd "$(dirname "$0")"

if [ -z "${ANDROID_NDK_HOME:-}" ]; then
  echo "ANDROID_NDK_HOME is required" >&2
  exit 1
fi

HOST_TAG="linux-x86_64"
case "$(uname -s)" in
  Darwin) HOST_TAG="darwin-x86_64" ;;
  MINGW*|MSYS*|CYGWIN*) HOST_TAG="windows-x86_64" ;;
esac

CC="$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/$HOST_TAG/bin/aarch64-linux-android34-clang"
if [ ! -x "$CC" ]; then
  echo "compiler not found: $CC" >&2
  exit 1
fi

CFLAGS=(-O2 -fPIC -fno-stack-protector -Wno-unused-result -Wno-incompatible-pointer-types)

"$CC" "${CFLAGS[@]}" -shared -s -Wl,--build-id=none -o libtimer_std.so timer-dzj3-apk.c
"$CC" "${CFLAGS[@]}" -shared -s -Wl,--build-id=none -o libtimer_lspd.so timer-dzj3-lsposed.c

echo "built:"
ls -l libtimer_std.so libtimer_lspd.so

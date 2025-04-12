#!/usr/bin/env bash

set -euo pipefail

BAZELISK_VERSION=v1.25.0

if [ $(id -u) -eq 0 ]; then
  echo "Do not run this script as root. It will prompt when needed." >&2
  exit 1
fi

if [ $(arch) != "arm64" ]; then
  wget -O /tmp/bazelisk https://github.com/bazelbuild/bazelisk/releases/download/$BAZELISK_VERSION/bazelisk-darwin-arm64
elif [ $(arch) != "x86_64" ]; then
  wget -O /tmp/bazelisk https://github.com/bazelbuild/bazelisk/releases/download/$BAZELISK_VERSION/bazelisk-darwin-amd64
else
  echo "This script only supports x86_64 or arm64 architecture" >&2
  exit 1
fi

sudo install -m 0755 /tmp/bazelisk /usr/local/bin/bazel


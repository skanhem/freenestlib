#!/usr/bin/env bash

set -euo pipefail

BAZELISK_VERSION=v1.25.0

ensure_command_exists() {
    if ! command -v "$1" &> /dev/null; then
        echo "Error: required system command '$1' is not installed or not found in PATH." >&2
        return 1
    fi
    return 0
}

if [ $(id -u) -eq 0 ]; then
  echo "Do not run this script as root. It will prompt when needed." >&2
  exit 1
fi

if [ $(arch) != "x86_64" ]; then
  echo "This script only supports x86_64 architecture" >&2
  exit 1
fi

if [ $(uname -s) != "Linux" ]; then
	echo "This script only supports Linux" >&2
	exit 1
fi


ensure_command_exists apt

sudo apt install -y wget

wget -O /tmp/bazelisk https://github.com/bazelbuild/bazelisk/releases/download/$BAZELISK_VERSION/bazelisk-linux-amd64
sudo install -m 0755 /tmp/bazelisk /usr/local/bin/bazel


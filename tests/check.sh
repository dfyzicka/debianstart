#!/usr/bin/env bash
set -Eeuo pipefail

cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.."
for script in bootstrap.sh installer/lib/*.sh tests/check.sh; do
  bash -n "$script"
done
zsh -n installer/profile/zshrc
zsh -n installer/profile/p10k.zsh
bash bootstrap.sh --help >/dev/null

source ./bootstrap.sh
ARCH=amd64

# Feed dialog's output without installing packages or changing the host.
ui() { printf '%s' "$fixture_selection"; }
fixture_selection=
ask_modules
[[ $INSTALL_XUI == 0 && $INSTALL_MUI == 0 && $INSTALL_DRY == 0 ]]
fixture_selection=$'m-ui\ndry'
ask_modules
[[ $INSTALL_XUI == 0 && $INSTALL_MUI == 1 && $INSTALL_DRY == 1 ]]

state_dir=$(mktemp -d)
trap 'rm -rf -- "$state_dir"' EXIT
printf '%s\n' 2054 1122334455667788 panel11223344 00000000000000000000000000000000 \
  > "$state_dir/install.state"
load_panel_state "$state_dir"
[[ ${#PANEL_PASSWORD} == 32 ]]
acknowledge_panel_login "$state_dir"
load_panel_state "$state_dir"
[[ -z $PANEL_PASSWORD && $PANEL_PORT == 2054 && $PANEL_PATH == 1122334455667788 ]]

printf '%s\n' 'Проверки Debian Start прошли.'

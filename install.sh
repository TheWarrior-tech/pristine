#!/usr/bin/env bash
# ═══════════════════════════════════════════════════
#  Pristine Installer
#  Usage: curl -fsSL https://raw.githubusercontent.com/TheWarrior-tech/pristine/main/install.sh | bash
# ═══════════════════════════════════════════════════

set -euo pipefail

VERSION="1.0.0"
REPO="TheWarrior-tech/pristine"
INSTALL_DIR="/usr/local/bin"
BINARY_NAME="pristine"

# Colors
BOLD="\033[1m"; RESET="\033[0m"; GREEN="\033[0;32m"
CYAN="\033[0;36m"; RED="\033[0;31m"; YELLOW="\033[0;33m"
BGREEN="\033[1;32m"; BCYAN="\033[1;36m"; BWHITE="\033[1;37m"

echo ""
printf "  ${BCYAN}╔══════════════════════════════════════╗${RESET}\n"
printf "  ${BCYAN}║${RESET}  ${BWHITE}✦ Pristine Installer${RESET}  ${BCYAN}║${RESET}\n"
printf "  ${BCYAN}╚══════════════════════════════════════╝${RESET}\n\n"

p_ok()   { printf "  ${GREEN}✓${RESET}  %s\n" "$*"; }
p_info() { printf "  ${CYAN}→${RESET}  %s\n" "$*"; }
p_err()  { printf "  ${RED}✗${RESET}  %s\n" "$*" >&2; }
p_warn() { printf "  ${YELLOW}⚠${RESET}  %s\n" "$*"; }

# macOS check
[[ "$(uname)" == "Darwin" ]] || { p_err "Pristine requires macOS."; exit 1; }

p_info "Detecting installation path..."

# Try /usr/local/bin, fall back to ~/.local/bin
if [[ -d "$INSTALL_DIR" ]] && [[ -w "$INSTALL_DIR" ]]; then
  p_ok  "Using $INSTALL_DIR"
elif [[ -d "/usr/local/bin" ]]; then
  INSTALL_DIR="/usr/local/bin"
  p_warn "Might need sudo for $INSTALL_DIR"
else
  INSTALL_DIR="$HOME/.local/bin"
  mkdir -p "$INSTALL_DIR"
  p_ok "Using $INSTALL_DIR (user install)"
  if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    p_warn "Add this to your shell config: export PATH=\"\$HOME/.local/bin:\$PATH\""
  fi
fi

# Download
TMPFILE=$(mktemp /tmp/pristine.XXXXXX)
URL="https://raw.githubusercontent.com/${REPO}/main/pristine"
p_info "Downloading from GitHub..."

if command -v curl &>/dev/null; then
  curl -fsSL "$URL" -o "$TMPFILE" || { p_err "Download failed. Check your connection."; exit 1; }
elif command -v wget &>/dev/null; then
  wget -qO "$TMPFILE" "$URL" || { p_err "Download failed."; exit 1; }
else
  p_err "Neither curl nor wget found. Please install one and retry."
  exit 1
fi

# Validate it's a bash script
head -1 "$TMPFILE" | grep -q "bash" || { p_err "Downloaded file looks invalid."; rm -f "$TMPFILE"; exit 1; }

chmod +x "$TMPFILE"

# Install
DEST="${INSTALL_DIR}/${BINARY_NAME}"
if [[ -w "$INSTALL_DIR" ]]; then
  mv "$TMPFILE" "$DEST"
  p_ok "Installed to $DEST"
else
  p_info "Needs sudo to install to $INSTALL_DIR..."
  sudo mv "$TMPFILE" "$DEST"
  p_ok "Installed to $DEST (with sudo)"
fi

echo ""
printf "  ${BGREEN}✓ Pristine v%s installed!${RESET}\n\n" "$VERSION"
printf "  Run ${BCYAN}pristine${RESET} to launch the interactive menu\n"
printf "  Run ${BCYAN}pristine --help${RESET} to see all commands\n\n"

# Verify
if command -v pristine &>/dev/null; then
  p_ok "Command available in current shell"
else
  p_warn "You may need to restart your terminal or run: source ~/.zshrc"
fi

echo ""

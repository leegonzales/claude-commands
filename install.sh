#!/bin/bash
#
# Claude Commands Installer
# Symlinks commands to ~/.claude/commands/
#

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$HOME/.claude/commands"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "Claude Commands Installer"
echo "========================="
echo

# Create target directory
if [ ! -d "$TARGET_DIR" ]; then
    echo -e "${YELLOW}Creating $TARGET_DIR${NC}"
    mkdir -p "$TARGET_DIR"
fi

# Command categories
CATEGORIES=("core" "dev" "project" "quality" "docs" "advanced")

# Count commands
total=0
for category in "${CATEGORIES[@]}"; do
    if [ -d "$SCRIPT_DIR/$category" ]; then
        count=$(find "$SCRIPT_DIR/$category" -name "*.md" | wc -l | tr -d ' ')
        total=$((total + count))
    fi
done

echo "Found $total commands to install"
echo

# Install commands
installed=0
skipped=0

for category in "${CATEGORIES[@]}"; do
    if [ -d "$SCRIPT_DIR/$category" ]; then
        echo -e "${GREEN}[$category]${NC}"

        for cmd in "$SCRIPT_DIR/$category"/*.md; do
            if [ -f "$cmd" ]; then
                filename=$(basename "$cmd")
                target="$TARGET_DIR/$filename"

                if [ -e "$target" ] && [ ! -L "$target" ]; then
                    echo -e "  ${YELLOW}SKIP${NC} $filename (file exists, not a symlink)"
                    skipped=$((skipped + 1))
                else
                    ln -sf "$cmd" "$target"
                    echo -e "  ${GREEN}OK${NC}   $filename"
                    installed=$((installed + 1))
                fi
            fi
        done
        echo
    fi
done

# Summary
echo "========================="
echo -e "${GREEN}Installed:${NC} $installed commands"
if [ $skipped -gt 0 ]; then
    echo -e "${YELLOW}Skipped:${NC}   $skipped commands (existing files)"
fi
echo
echo "Commands are now available in Claude Code."
echo "Type / to see available commands."
echo
echo "To update later, run: git pull && ./install.sh"

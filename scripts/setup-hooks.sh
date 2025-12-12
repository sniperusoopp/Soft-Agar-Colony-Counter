#!/usr/bin/env bash
# Install git hooks for development
# Usage: ./scripts/setup-hooks.sh

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(dirname "$SCRIPT_DIR")"

echo "Installing git hooks..."

# Copy pre-commit hook
cp "$SCRIPT_DIR/pre-commit" "$REPO_ROOT/.git/hooks/pre-commit"
chmod +x "$REPO_ROOT/.git/hooks/pre-commit"

echo "✅ Git hooks installed"
echo ""
echo "The pre-commit hook will automatically rebuild frontend/dist"
echo "whenever you commit changes to frontend/src files."


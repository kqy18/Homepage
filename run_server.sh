#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
export GEM_HOME="$PWD/.local/gems"
export GEM_PATH="$GEM_HOME:$(ruby -e 'puts Gem.default_path.join(":")')"
BUNDLE_BIN="$GEM_HOME/bin/bundle"
if [[ ! -x "$BUNDLE_BIN" ]]; then
  echo "Project dependencies are missing. Follow the setup steps in README.md."
  exit 1
fi
if [[ "${1:-}" == "build" ]]; then
  shift
  exec "$BUNDLE_BIN" exec jekyll build --baseurl "" "$@"
fi
exec "$BUNDLE_BIN" exec jekyll serve --host 127.0.0.1 --port 4000 --baseurl "" --livereload "$@"

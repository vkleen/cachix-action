#!/bin/sh

cat >/tmp/post-build-hook.sh <<EOF
#!/bin/sh
set -eu
set -f

env
echo "\$OUT_PATHS" | "$1" -c /home/runner/.config/cachix/cachix.dhall push "$2"
EOF

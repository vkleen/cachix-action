#!/bin/sh

cat >/tmp/post-build-hook.sh <<EOF
#!/bin/sh
set -eu
set -f

exec "$1" push "$2" \$OUT_PATHS
EOF

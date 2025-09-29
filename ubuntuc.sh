# This is a default distribution plug-in.
# Do not modify this file as your changes will be overwritten on next update.
# If you want customize installation, please make a copy.

DISTRO_NAME="Ubuntu (25.04)"
DISTRO_COMMENT="Regular release (plucky)."

# These URLs and SHA256 hashes are automatically updated by GitHub Actions
TARBALL_URL['aarch64']="{{URL_ARM64}}"
TARBALL_SHA256['aarch64']="{{SHA_ARM64}}"

TARBALL_URL['armhf']="{{URL_ARMHF}}"
TARBALL_SHA256['armhf']="{{SHA_ARMHF}}"

TARBALL_URL['x86_64']="{{URL_AMD64}}"
TARBALL_SHA256['x86_64']="{{SHA_AMD64}}"

distro_setup() {
    run_proot_cmd apt update -y
    run_proot_cmd apt upgrade -y
    run_proot_cmd apt install -y nano wget curl tree dialog apt-utils sudo vim net-tools iproute2 bash-completion locales tzdata
    run_proot_cmd cp /etc/skel/.bashrc .
}

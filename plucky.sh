# This is a default distribution plug-in.
# Do not modify this file as your changes will be overwritten on next update.
# If you want customize installation, please make a copy.
DISTRO_NAME="Ubuntu (25.04)"
DISTRO_COMMENT="Regular release (plucky)."

TARBALL_URL['aarch64']="https://github.com/DangChuVMNewb/pr-distro/releases/download/v1.0.1/plucky-arm64.tar.xz"
TARBALL_SHA256['aarch64']="32ef3e4d1b43711ba223bf1107ad3d7b20afb06a6d87c2a428a8a21117393031"

distro_setup() {
	run_proot_cmd cp /etc/skel/.bashrc .
}

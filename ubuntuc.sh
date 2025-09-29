# This is a default distribution plug-in.
# Do not modify this file as your changes will be overwritten on next update.
# If you want customize installation, please make a copy.
DISTRO_NAME="Ubuntu (25.04)"
DISTRO_COMMENT="Regular release (plucky)."

TARBALL_URL['aarch64']="https://github.com/DangChuVMNewb/pr-distro/releases/download/v1.0.0/ubuntu-plucky-rootfs.tar.gz"
TARBALL_SHA256['aarch64']="06be4ed560557c6fcea5c55f66b771f1a56e98a95b411175f1618e5563e1968f"

distro_setup() {
	run_proot_cmd apt update -y
	run_proot_cmd apt upgrade -y
	run_proot_cmd apt install nano wget curl tree dialog apt-utils -y
	run_proot_cmd cp /etc/skel/.bashrc .
}

#!/usr/bin/env bash
set -e

# Kiểm tra và cài proot-distro nếu chưa có
if ! command -v proot-distro >/dev/null 2>&1; then
    pkg update -y
    pkg install -y proot-distro
fi

# Đường dẫn cấu hình
PD_PATH="/data/data/com.termux/files/usr/etc/proot-distro"
DISTRO_SCRIPT="ubuntuc.sh"
URL="https://github.com/DangChuVMNewb/pr-distro/raw/refs/heads/main/${DISTRO_SCRIPT}"

# Tạo thư mục nếu chưa có
[ -d "$PD_PATH" ] || mkdir -p "$PD_PATH"

# Nếu chưa có file thì mới tải
if [ ! -f "${PD_PATH}/${DISTRO_SCRIPT}" ]; then
    wget -O "${PD_PATH}/${DISTRO_SCRIPT}" "$URL"
fi

# Cài đặt Ubuntu tùy chỉnh
proot-distro install ubuntuc

# Thông báo hoàn tất
echo "✅ Đã cài xong ubuntuc!"

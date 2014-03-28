MOUNT_DIR=/Volumes/tinyos

tinyos_mount() {
	mkdir -p "$MOUNT_DIR"
    sshfs tinyos@localhost:/opt/tinyos/ -p 2022 "$MOUNT_DIR"
}

tinyos_umount() {
    diskutil umount "$MOUNT_DIR"
    if [[ $? -ne 0 ]]; then
        echo "Trying with the force..."
        diskutil unmount force "$MOUNT_DIR"
    fi
}
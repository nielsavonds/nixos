
build-vm:
	sudo nix build .#nixosConfigurations.minipc.config.system.build.vm

run-vm: build-vm
	QEMU_NET_OPTS="hostfwd=tcp::2221-:22" QEMU_KERNEL_PARAMS=console=ttyS0 ./result/bin/run-nixos-vm -nographic; reset


build-vm:
	sudo nix --extra-experimental-features flakes --extra-experimental-features nix-command build .#nixosConfigurations.minipc.config.system.build.vm

run-vm: build-vm
	QEMU_KERNEL_PARAMS=console=ttyS0 ./result/bin/run-nixos-vm -nographic; reset

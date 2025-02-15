# Build

Run the following command to build the project:

```bash
sudo nix --extra-experimental-features flakes --extra-experimental-features nix-command build .#nixosConfigurations.minipc.config.system.build.vm
```

# Run

Run the following command to run the project:

```bash
QEMU_KERNEL_PARAMS=console=ttyS0 ./result/bin/run-nixos-vm -nographic; reset
```

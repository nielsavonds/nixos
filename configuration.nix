{ config, lib, pkgs, ... }:

{
  imports = [
    ./zsh.nix
  ];
 
  users.groups.niels = {};
  users.users = {
    niels = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      password = "p4ssw0rd";
      group = "niels";
    };
  };

  virtualisation.vmVariant = {
    # following configuration is added only when building VM with build-vm
    virtualisation = {
      memorySize = 2048; # Use 2048MiB memory.
      cores = 3;
      graphics = false;
    };
  };

  services.openssh = {
    enable = true;
    settings.PasswordAuthentication = true;
  };

  networking.firewall.allowedTCPPorts = [ 22 ];
  environment.systemPackages = with pkgs; [
    htop
    vim
    # home-manager
  ];

  system.stateVersion = "24.11";
}

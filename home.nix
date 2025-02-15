{...}:

{
  home.username = "niels";
  home.homeDirectory = "/home/niels";

  # Copy dotfiles to the home directory
  # home.file."dotfiles" = {
  #   source = ./dotfiles;
  #   recursive = true;
  # };

  home.stateVersion = "24.11";
}
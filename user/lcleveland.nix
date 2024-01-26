{ config, pkgs, home-manager, ... }:
{
  users.users.lcleveland = {
    isNormalUser = true;
    description = "Lyle Cleveland";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  home-manager.users.lcleveland = {
    home.stateVersion = "23.11";
    imports = [
      ../home/app/browser/floorp.nix
      ../home/app/terminal/kitty.nix
    ];
    programs.git = {
      enable = true;
      userName = "Lyle Cleveland";
      userEmail = "lyle.cleveland@yahoo.com";
    };
  };
}

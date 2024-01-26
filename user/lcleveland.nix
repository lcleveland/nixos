{ config, pkgs, home-manager, ... }:
{
  users.users.lcleveland = {
    isNormalUser = true;
    description = "Lyle Cleveland";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  home-manager.users.lcleveland = {
    home.stateVersion = "23.11";
    imports = [ ../home/app/browser/floorp.nix ];
    programs.git = {
      userName = "Lyle Cleveland";
      userEmail = "lyle.cleveland@yahoo.com";
    };
  };
}

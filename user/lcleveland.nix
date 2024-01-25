{ config, pkgs, home-manager, ... }:
{
  users.users.lcleveland = {
    isNormalUser = true;
    description = "Lyle Cleveland";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  home-manager.nixosModules.home-manager = {
    home-manager.users.lcleveland = {
      home.stateVersion = "18.09";
    };
  };
}

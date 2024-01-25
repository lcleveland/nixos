{ config, pkgs, home-manager, ... }:
{
  users.users.lcleveland = {
    isNormalUser = true;
    description = "Lyle Cleveland";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  home-manager.users.lcleveland = {
    home.stateVersion = "23.11";
    home.packages = with pkgs; [
      firefox
    ];
  };
}

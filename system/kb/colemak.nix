{ config, pkgs, ... }:
{
  services.xserver = {
    layout = "us";
    xkbVariant = "colemak_dh";
  };
}

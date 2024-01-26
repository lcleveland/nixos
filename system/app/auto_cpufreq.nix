{ config, pkgs, ... }:
{
  imports = [ auto-cpufreq.nixosModules.default ];
  programs.auto-cpufreq.enable = true;
}

{ config, pkgs, auto-cpufreq, ... }:
{
  imports = [ auto-cpufreq.nixosModules.default ];
  programs.auto-cpufreq.enable = true;
}

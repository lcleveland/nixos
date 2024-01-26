{ config, pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.auto-cpufreq
  ];
  services.auto-cpufreq.enable = true;
  programs.auto-cpufreq.enable = true;
}

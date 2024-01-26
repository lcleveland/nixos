{ config, pkgs, ... }:
{
  inputs = {
    auto-cpufreq = {
      url = "github:AdnanHodzic/auto-cpufreq";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  programs.auto-cpufreq.enable = true;
}

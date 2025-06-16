{ config, pkgs, lib, ... }: {
  environment.systemPackages = with pkgs; [
    (ffmpeg-full.override { 
      withUnfree = true; 
      withOpengl = true;
    })
  ];
}

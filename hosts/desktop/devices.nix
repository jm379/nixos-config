{ config, pkgs, inputs, ... }: {
  fileSystems."/mnt/nvme" = {
    device = "/dev/disk/by-uuid/b6ce119b-7593-47e4-bdca-d74be9c1641b";
    fsType = "ext4";
    options = [
      "defaults"
      "users"
      "nofail"
      "x-gvfs-show"
      "exec"
    ];
  };
}

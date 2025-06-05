{ config, pkgs, inputs, ... }: {
  # Secondary NVMe
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

  # External NVMe
  fileSystems."/mnt/ext" = {
    device = "/dev/disk/by-uuid/20f304c6-627d-454e-8cf5-9957fae86a77";
    fsType = "ext4";
    options = [
      "defaults"
      "users"
      "nofail"
      "x-gvfs-show"
      "rw"
      "exec"
    ];
  };
}

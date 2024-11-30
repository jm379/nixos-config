{ config, pkgs, inputs, ... }: {
  services.openssh = {
    enable = false;
    ports = [ 22 ];
    settings = {
      PasswordAuthentication = true;
      AllowUsers = ["rcav"];
      PermitRootLogin = "no";
    };
  };

  programs.ssh = {
    startAgent = true;
  };
}

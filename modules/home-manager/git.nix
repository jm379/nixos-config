{ pkgs, config, ... }: {

  programs.git = {
    enable = true;
    userName = "Rodolfo";
    userEmail = "rodolfocavoss@gmail.com";
  };
}

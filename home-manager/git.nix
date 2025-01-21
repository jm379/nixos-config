{ pkgs, config, ... }: {
  programs.git = {
    enable = true;
    userName = "Rodolfo";
    userEmail = "rodolfocavoss@gmail.com";
    extraConfig = {
      core.editor = "nvim";
    };
  };
}

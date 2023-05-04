{
  enable = true;

  userName = "Franck Hu";
  userEmail = "byfranckhu@gmail.com";
  aliases = {
    st = "status";
    com = "commit -v";
    pu = "push";
    a = "add";
    c = "checkout";
  };

  extraConfig = {
    core = {
      editor = "nvim";
    };
    pull.rebase = true;
    init.defaultBranch = "main";
  };
}

{
  enable = true;

  userName = "Franck Hu";
  userEmail = "byfranckhu@gmail.com";
  aliases = {
    st = "status";
    ci = "commit -v";
    pu = "push";
    a = "add";
    co = "checkout";
    cb = "checkout -b";
    di = "diff";
  };

  extraConfig = {
    core = {
      editor = "nvim";
    };
    pull.rebase = true;
    init.defaultBranch = "main";
  };
}

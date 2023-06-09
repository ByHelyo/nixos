{
  enable = true;

  userName = "Franck Hu";
  userEmail = "byfranckhu@gmail.com";
  aliases = {
    st = "status";
    ci = "commit -v";
    pu = "push";
    pl = "pull";
    a = "add";
    co = "checkout";
    di = "diff";
    l = "log";
    lo = "log --oneline --graph --decorate";
  };

  extraConfig = {
    core = {
      editor = "nvim";
    };
    pull.rebase = true;
    init.defaultBranch = "main";
  };
}

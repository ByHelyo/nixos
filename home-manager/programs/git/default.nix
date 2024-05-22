{
  enable = true;

  userName = "Franck Hu";
  userEmail = "byfranckhu@outlook.com";
  aliases = {
    st = "status";
    ci = "commit -v";
    pu = "push";
    pl = "pull";
    a = "add";
    co = "checkout";
    cb = "checkout -b";
    di = "diff";
    l = "log";
    br = "branch";
    lo = "log --oneline --graph --decorate";
    hist = "log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short";
  };

  extraConfig = {
    core = {
      editor = "nvim";
    };
    pull.rebase = true;
    init.defaultBranch = "main";
  };
}

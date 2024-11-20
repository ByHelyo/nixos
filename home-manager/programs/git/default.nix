{
  enable = true;

  userName = "Helyo";
  userEmail = "byhelyo@gmail.com";
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
    lo = "log --oneline --graph --decorate";
    hist = "log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short";
    rt = "remote -v";
    br = "branch -vv";
  };

  extraConfig = {
    core = {
      editor = "nvim";
    };
    pull.rebase = true;
    init.defaultBranch = "main";
  };
}

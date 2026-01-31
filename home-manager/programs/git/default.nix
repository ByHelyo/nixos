{
  enable = true;

  userName = "Helyo";
  userEmail = "70762494+ByHelyo@users.noreply.github.com";

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

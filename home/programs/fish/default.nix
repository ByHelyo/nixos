{ pkgs }:

{
  enable = true;

  interactiveShellInit = ''
    set fish_greeting # Disable greeting
  '';

  shellAliases = {
    ls = "${pkgs.exa}/bin/exa";
    tree = "${pkgs.exa}/bin/exa -T";
    cat = "${pkgs.bat}/bin/bat";
    pn = "${pkgs.nodePackages.pnpm}/bin/pnpm";
    cl = "clear";
    rm = "rm -vd";
    mkdir = "mkdir -pv";
    dc = "${pkgs.docker-compose}/bin/docker-compose";
  };

  shellAbbrs = {
    clion = "${pkgs.jetbrains.clion}/bin/clion > /dev/null 2>&1 &";
    idea = "${pkgs.jetbrains.idea-ultimate}/bin/idea-ultimate > /dev/null 2>&1 &";
    rider = "${pkgs.jetbrains.rider}/bin/rider > /dev/null 2>&1 &";
    cclscmake = "cmake -H. -BDebug -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=YES ; ln -s Debug/compile_commands.json .";
  };
}

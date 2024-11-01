{ color }:

{
  type = "internal/i3";

  enable-scroll = false;

  index-sort = true;
  strip-wsnumbers = true;

  format = "<label-state> <label-mode>";

  label-visible-padding = 2;

  label-mode = "%mode%";
  label-mode-padding = 2;
  label-mode-background = color.shades."3";
  label-mode-foreground = color.foreground;

  label-focused = "%name%";
  label-focused-padding = 2;
  label-focused-background = color.background-alt;
  label-focused-underline = color.shades."3";

  label-unfocused = "%name%";
  label-unfocused-padding = 2;
}

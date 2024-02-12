{ color }:

{
  type = "internal/xkeyboard";

  blacklist-0 = "num lock";
  blacklist-1 = "scroll lock";

  label-layout = "%layout%";
  label-layout-foreground = color.primary;

  label-indicator-padding = 2;
  label-indicator-margin = 1;
  label-indicator-foreground = color.background;
  label-indicator-background = color.secondary;
}

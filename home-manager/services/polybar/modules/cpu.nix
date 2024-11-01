{ color }:

{
  type = "internal/cpu";

  internal = 5;

  format = "<label>";
  format-prefix = "CPU ";
  format-background = color.shades."5";
  format-foreground = color.foreground;
  format-padding = 2;

  label = " %percentage%%";
}

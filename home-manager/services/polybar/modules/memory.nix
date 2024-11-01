{ color }:

{
  type = "internal/memory";

  interval = 5;
  format-prefix = "RAM ";
  format-background = color.shades."8";
  format-foreground = color.foreground;
  format-padding = 2;

  label = "%percentage_used:2%%";
}

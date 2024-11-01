{ color, settings }:

{
  type = "internal/backlight";
  card = settings.backlight.card;

  enable-scroll = true;

  format = "<label>";
  format-prefix = "LGT ";
  format-background = color.shades."7";
  format-foreground = color.foreground;
  format-padding = 2;

  label = "%percentage%%";
}

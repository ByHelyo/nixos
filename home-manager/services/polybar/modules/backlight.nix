{ color, settings }:

{
  type = "internal/backlight";
  card = settings.backlight.card;

  enable-scroll = true;

  format-prefix = "LGT ";
  format-prefix-foreground = color.primary;

  label = "%percentage%%";
}

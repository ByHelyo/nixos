{ color, config }:

{
  type = "internal/backlight";
  card = config.backlight.card;

  enable-scroll = true;

  format-prefix = "LGT ";
  format-prefix-foreground = color.primary;

  label = "%percentage%%";
}

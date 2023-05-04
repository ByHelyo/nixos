{ color }:

{
  type = "internal/cpu";

  interval = "10.0";

  format-prefix = "CPU ";
  format-prefix-foreground = color.primary;

  label = "%percentage:2%%";
}

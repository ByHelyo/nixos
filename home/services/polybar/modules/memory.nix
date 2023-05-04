{ color }:

{
  type = "internal/memory";

  interval = 5;
  format-prefix = "RAM ";
  format-prefix-foreground = color.primary;
  label = "%percentage_used:2%%";
}

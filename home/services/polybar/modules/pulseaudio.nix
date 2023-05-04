{ color }:

{
  type = "internal/pulseaudio";

  interval = 5;

  format-volume-prefix = "VOL ";
  format-volume-prefix-foreground = color.primary;
  format-volume = "<label-volume>";

  label-volume = "%percentage%%";

  label-muted = "MUTED";
  label-muted-foreground = color.disabled;
}

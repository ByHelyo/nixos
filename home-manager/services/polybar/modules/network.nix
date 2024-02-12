{ color, config }:

{
  type = "internal/network";
  interface = config.network.wireless;

  interval = "15.0";

  unknown-as-up = true;

  format-connected = "<label-connected>";
  format-disconnected = "<label-disconnected>";

  label-connected = "%{F#FF5F1F}%ifname%%{F-} %essid% %local_ip%";
  label-disconnected = "%{F#FF5F1F}%ifname%%{F#707880} disconnected";
}


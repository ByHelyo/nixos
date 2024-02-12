{ config }:

{
  type = "internal/battery";

  full-at = 99;

  low-at = 5;

  battery = config.battery.battery_name;
  adapter = config.battery.battery_adapter;

  poll-interval = 5;
}

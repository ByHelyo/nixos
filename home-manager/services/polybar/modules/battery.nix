{ settings }:

{
  type = "internal/battery";

  full-at = 99;

  low-at = 5;

  battery = settings.battery.battery_name;
  adapter = settings.battery.battery_adapter;

  poll-interval = 5;
}

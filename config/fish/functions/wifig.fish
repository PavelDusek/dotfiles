function wifig
	command iwctl station wlan0 scan
	command iwctl station wlan0 get-networks
end

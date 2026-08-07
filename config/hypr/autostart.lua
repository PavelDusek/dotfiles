--- https://wiki.hypr.land/Configuring/Basics/Autostart/
hl.on("hyprland.start", function()
	-- Daemons:
	hl.exec_cmd("~/.local/bin/walld")
	hl.exec_cmd("waybar")
	hl.exec_cmd("udiskie")
	hl.exec_cmd("dunst")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("antimicrox --hidden --profile /home/pavel/.config/antimicrox/8BitDo_d.gamecontroller.amgp")
	--- KWallet and ly by PAM https://gist.github.com/Scott-Nx/b3830741a08d4e104468a49a74b55fcf
	hl.exec_cmd("/usr/lib/pam_kwallet_init")

	-- Apps:
	hl.exec_cmd("zen-browser", { workspace = "1 silent" })
	hl.exec_cmd("sleep 1 && kitty zellij --layout ~/.config/zellij/layouts/default.kdl", { workspace = "2 silent" })
	hl.exec_cmd("signal-desktop --password-store='kwallet6'", { workspace = "3 silent" })
	hl.exec_cmd("elisa", { workspace = "4 silent" })
	hl.exec_cmd("kitty --session /home/pavel/.local/bin/kitty-website-tracker.sh", { workspace = "5 silent" })
	hl.exec_cmd("kitty --session /home/pavel/.local/bin/kitty-astro.sh", { workspace = "5 silent" })
	hl.exec_cmd("gwenview /home/pavel/Pictures/nasa/picture_of_the_day.jpg", { workspace = "5 silent" })
	hl.exec_cmd("kitty --session /home/pavel/.local/bin/kitty-weather.sh", { workspace = "6 silent" })
	hl.exec_cmd("zotero", { workspace = "7 silent" })
end)

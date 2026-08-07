--- https://wiki.hypr.land/Configuring/Basics/Variables/#input
hl.config({
	input = {
		kb_layout = "us,cz",
		kb_variant = ",qwerty",
		kb_model = "",
		kb_options = "grp:alt_shift_toggle,ctrl:nocaps", --- triggers hyprctl switchxkblayout
		kb_rules = "",
		follow_mouse = 1,
		numlock_by_default = true,
		sensitivity = 0, --- -1.0 - 1.0, 0 means no modification.
		touchpad = {
			natural_scroll = false,
		},
	},
})

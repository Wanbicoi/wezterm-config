local wezterm = require("wezterm")

return {
	-- ─────────────────────────────────────────────
	-- Shell: Launch Arch Linux (WSL)
	-- ─────────────────────────────────────────────
	default_prog = { "wsl.exe", "-d", "archlinux", "--cd", "~/" },
	-- default_prog = { "wsl.exe" },

	-- ─────────────────────────────────────────────
	-- Font
	-- ─────────────────────────────────────────────
	font = wezterm.font("CaskaydiaCove Nerd Font Propo"),
	-- font = wezterm.font("JetBrainsMono Nerd Font"),
	font_size = 10,

	-- ─────────────────────────────────────────────
	-- Window: Dimensions & Padding
	-- ─────────────────────────────────────────────
	initial_cols = 160,
	initial_rows = 40,

	window_padding = {
		left = 8,
		right = 8,
		top = 8,
		bottom = 8,
	},

	-- ─────────────────────────────────────────────
	-- Color Theme
	-- ─────────────────────────────────────────────
	color_scheme = "rose-pine-dawn",

	-- ─────────────────────────────────────────────
	-- Cursor
	-- ─────────────────────────────────────────────
	cursor_blink_rate = 0,

	-- ─────────────────────────────────────────────
	-- Tab / Window close behaviour
	-- ─────────────────────────────────────────────
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE", -- hides OS title bar, keeps resize border

	-- ─────────────────────────────────────────────
	-- Key bindings
	-- ─────────────────────────────────────────────
	keys = {
		{
			key = "w",
			mods = "CTRL|SHIFT",
			action = wezterm.action.CloseCurrentTab({ confirm = false }),
		},
	},

	-- ─────────────────────────────────────────────
	-- Launch menu (shown in the launcher / + button)
	-- ─────────────────────────────────────────────
	launch_menu = {
		{
			label = "PowerShell",
			args = { "powershell.exe" },
		},
		{
			label = "PowerShell 7 (pwsh)",
			args = { "pwsh.exe" },
		},
		{
			label = "Arch Linux (WSL)",
			args = { "wsl.exe", "-d", "archlinux", "--cd", "~/" },
		},
	},

	-- ─────────────────────────────────────────────
	-- Mouse bindings
	-- ─────────────────────────────────────────────
	-- mouse_bindings = {
	-- 	-- Middle-click on a tab to close without confirmation
	-- 	{
	-- 		event = { Down = { streak = 1, button = "Middle" } },
	-- 		mods = "NONE",
	-- 		action = wezterm.action.CloseCurrentTab({ confirm = false }),
	-- 	},
	-- },
	colors = {
		tab_bar = {
			background = "#faf4ed", -- Matches the primary dawn background

			-- The tab you are currently using
			active_tab = {
				bg_color = "#faf4ed", -- Matches terminal background (Base)
				fg_color = "#575279", -- Deep text color
				intensity = "Bold",
				underline = "None",
			},

			-- Other background tabs
			inactive_tab = {
				bg_color = "#f2e9e1", -- Matches window frame bg
				fg_color = "#9893a5", -- Muted text contrast
			},

			-- Hovering over a tab
			inactive_tab_hover = {
				bg_color = "#dfdad9", -- Medium contrast fill
				fg_color = "#575279",
			},

			-- Empty space to the right of your tabs
			new_tab = {
				bg_color = "#faf4ed",
				fg_color = "#9893a5",
			},
			new_tab_hover = {
				bg_color = "#dfdad9",
				fg_color = "#575279",
			},
		},
	},

	-- ─────────────────────────────────────────────
	-- Window Frame (Fancy tab bar / title bar)
	-- ─────────────────────────────────────────────
	window_frame = {
		-- Font for the tab bar titles
		font = wezterm.font("CaskaydiaCove Nerd Font Propo"),
		font_size = 10,

		-- Active window title bar
		active_titlebar_bg = "#f2e9e1", -- Overlay (one step darker than Base)
		active_titlebar_fg = "#575279", -- Text
		active_titlebar_border_bottom = "#cec9c7", -- Darker separator

		-- Inactive window title bar
		inactive_titlebar_bg = "#dfdad9", -- Highlight High (one step darker than Overlay)
		inactive_titlebar_fg = "#9893a5", -- Muted

		-- Title bar buttons (close / maximise)
		button_fg = "#575279",
		button_bg = "#f2e9e1",
		button_hover_fg = "#575279",
		button_hover_bg = "#cec9c7", -- Darker hover
	},
}

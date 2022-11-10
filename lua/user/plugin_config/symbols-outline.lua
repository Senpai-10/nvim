local status_ok, symbols_outline = pcall(require, "symbols-outline")
if not status_ok then
	return
end

local opts = {
	highlight_hovered_item = true,
	show_guides = true,
	auto_preview = false,
	position = "right",
	relative_width = true,
	width = 25,
	auto_close = false,
	show_numbers = false,
	show_relative_numbers = false,
	show_symbol_details = true,
	preview_bg_highlight = "Pmenu",
	autofold_depth = nil,
	auto_unfold_hover = true,
	fold_markers = { "", "" },
	wrap = false,
	keymaps = { -- These keymaps can be a string or a table for multiple keys
		close = { "<Esc>", "q" },
		goto_location = "<Cr>",
		focus_location = "o",
		hover_symbol = "<C-space>",
		toggle_preview = "<C-k>",
		rename_symbol = "r",
		code_actions = "a",
		fold = "h",
		unfold = "l",
		fold_all = "W",
		unfold_all = "E",
		fold_reset = "R",
	},
	lsp_blacklist = {},
	symbol_blacklist = {},
	symbols = {
		File = { icon = "[File]", hl = "TSURI" },
		Module = { icon = "[Module]", hl = "TSNamespace" },
		Namespace = { icon = "[NameSpace]", hl = "TSNamespace" },
		Package = { icon = "[Package]", hl = "TSNamespace" },
		Class = { icon = "[Class]", hl = "TSType" },
		Method = { icon = "[Method]", hl = "TSMethod" },
		Property = { icon = "[Property]", hl = "TSMethod" },
		Field = { icon = "[Field]", hl = "TSField" },
		Constructor = { icon = "[Constructor]", hl = "TSConstructor" },
		Enum = { icon = "[Enum]", hl = "TSType" },
		Interface = { icon = "[InterFace]", hl = "TSType" },
        Function = { icon = "[Function]", hl = "TSFunction" },
		Variable = { icon = "[Variable]", hl = "TSConstant" },
		Constant = { icon = "[Constant]", hl = "TSConstant" },
		String = { icon = "[String]", hl = "TSString" },
		Number = { icon = "[Number]", hl = "TSNumber" },
		Boolean = { icon = "[Boolean]", hl = "TSBoolean" },
		Array = { icon = "[Array]", hl = "TSConstant" },
		Object = { icon = "[Object]", hl = "TSType" },
		Key = { icon = "[Key]", hl = "TSType" },
		Null = { icon = "[NULL]", hl = "TSType" },
		EnumMember = { icon = "[EnumMember]", hl = "TSField" },
		Struct = { icon = "[Struct]", hl = "TSType" },
		Event = { icon = "[Event]", hl = "TSType" },
		Operator = { icon = "[Operator]", hl = "TSOperator" },
		TypeParameter = { icon = "[TypeParameter]", hl = "TSParameter" },
	},
}

symbols_outline.setup(opts)

local graphics = "__ResourceEraser__/graphics/"

data:extend(
{
	{
		type = "selection-tool",
		name = "ResourceEraser",
		icon = graphics .. "resource-eraser-64.png",
		icon_size = 64,
		flags = {"only-in-cursor", "spawnable", "not-stackable"},
		subgroup = "tool",
		order = "c[automated-construction]-b[resource-eraser]",
		stack_size = 1,
		stackable = false,
		select = {
			border_color = { r = 0, g = 1, b = 0 },
			cursor_box_type = "pair",
			mode = "any-entity",
			entity_filter_mode = "whitelist",
			entity_type_filters = {"resource"},
		},
		alt_select = {
			border_color = { r = 0, g = 0, b = 1 },
			cursor_box_type = "pair",
			mode = "any-entity",
			entity_filter_mode = "whitelist",
			entity_type_filters = {"resource"},
		},
		hidden = true
	},
	{
     	type = "shortcut",
    	name = "ResourceEraser",
    	order = "o[Resource Eraser]",
    	action = "spawn-item",
    	item_to_spawn = "ResourceEraser",
    	toggleable = true,
    	icon = graphics .. "resource-eraser-64.png",
		icon_size = 64,
    	small_icon = graphics .. "resource-eraser-32.png",
		small_icon_size = 32
    }
})

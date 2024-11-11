local resources_arr = {
	"coal", "copper-ore", "crude-oil", "iron-ore", "stone", "uranium-ore", -- Factorio
	"calcite", "holmium-ore", "scrap", "tungsten", -- Space Age
	"imersite", "rare-metals", "mineral-water" -- Krastorio 2
}

local resources_tbl = {}
for _, res in ipairs(resources_arr) do
	resources_tbl[res] = true
end

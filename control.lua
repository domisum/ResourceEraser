local function OnPlayerSelectedArea(event, destroy)
	if event.item ~= "ResourceEraser"
	or not destroy
	then return end

	local player = event.player_index ~= nil and game.get_player(event.player_index) or nil
	if not player
	or not player.valid
	then return end
	
	local excluded_resources_cs = settings.get_player_settings(player)["resource-eraser-excluded"].value
	local excluded_resources = { }
	for word in string.gmatch(excluded_resources_cs, '([^,]+)') do
		excluded_resources[word] = true
	end

	for _, entity in ipairs(event.entities)
	do
		if entity.valid
		and entity.type == "resource"
		and not excluded_resources[entity.name]
		then
			entity.destroy()
		end
	end
end

script.on_event(defines.events.on_player_selected_area, function(event) OnPlayerSelectedArea(event, true) end)
script.on_event(defines.events.on_player_alt_selected_area, function(event) OnPlayerSelectedArea(event, false) end)

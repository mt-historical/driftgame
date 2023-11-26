-- Register light

minetest.register_node("dg_light:light", {
	description = "Light",
	tiles = {"dg_light_light.png"},
	paramtype = "light",
	light_source = 14,
	is_ground_content = false,
	groups = {dig_immediate = 2},
})

-- Give to new player

minetest.register_on_newplayer(function(player)
	local inv = player:get_inventory()
	inv:add_item("main", "dg_light:light 64")
end)

-- legacy compat (does require any nodes in inv to be placed and dug again for stacks to work)
minetest.register_alias("light:light", "dg_light:light")

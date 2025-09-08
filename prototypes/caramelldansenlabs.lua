local settingVolume = settings.startup["caramelldansenlabs_volume"].value
local settingLimit = settings.startup["caramelldansenlabs_limit"].value

data.raw["lab"]["lab"].working_sound = {
	sound = {
		filename = "__CaramelldansenLabs__/sounds/CaramelldansenLabs.ogg",
		volume = 0.01 * 0.8 * settingVolume,
		preload = true
	},
	idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
	apparent_volume = 2.5,
    audible_distance_modifier = 0.2,
	fade_in_ticks = 5,
	fade_out_ticks = 5,
}
if settingLimit == true then
	data.raw["lab"]["lab"].working_sound.max_sounds_per_type = 1
end

if mods["Krastorio2"] then
	data.raw["lab"]["biusart-lab"].working_sound.fade_in_ticks = 5
	data.raw["lab"]["biusart-lab"].working_sound.fade_out_ticks = 5
	data.raw["lab"]["biusart-lab"].working_sound.sound = sounds
	if settingLimit == true then
		data.raw["lab"]["biusart-lab"].working_sound.max_sounds_per_type = 1
	end
end

if mods["space-exploration"] then
	data.raw["lab"]["se-space-science-lab"].working_sound.fade_in_ticks = 5
	data.raw["lab"]["se-space-science-lab"].working_sound.fade_out_ticks = 5
	data.raw["lab"]["se-space-science-lab"].working_sound.sound = sounds
	if settingLimit == true then
		data.raw["lab"]["se-space-science-lab"].working_sound.max_sounds_per_type = 1
	end
end

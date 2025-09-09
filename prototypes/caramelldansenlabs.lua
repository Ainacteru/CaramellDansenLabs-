local settingVolume = settings.startup["caramelldansenlabs_volume"].value

data.raw["lab"]["lab"].working_sound = {

	sound = {
		filename = "__CaramelldansenLabs+__/sounds/CaramelldansenLabs.ogg",
		volume = 0.01 * 0.8 * settingVolume,
		preload = true
	},
	persistent = false,
	use_doppler_shift = false, 

	idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },

	apparent_volume = 2.5,
    audible_distance_modifier = 500,

	fade_in_ticks = 5,
	fade_out_ticks = 5,

	max_sounds_per_prototype = 1,
}

if mods["Krastorio2"] then
	data.raw["lab"]["biusart-lab"].working_sound.fade_in_ticks = 5
	data.raw["lab"]["biusart-lab"].working_sound.fade_out_ticks = 5
	data.raw["lab"]["biusart-lab"].working_sound.sound = sounds
end

if mods["space-exploration"] then
	data.raw["lab"]["se-space-science-lab"].working_sound.fade_in_ticks = 5
	data.raw["lab"]["se-space-science-lab"].working_sound.fade_out_ticks = 5
	data.raw["lab"]["se-space-science-lab"].working_sound.sound = sounds
end

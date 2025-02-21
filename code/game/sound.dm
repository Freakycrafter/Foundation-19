GLOBAL_LIST_INIT(zombie_sound,list('sound/scp/voice/049_1/zombierand1.ogg','sound/scp/voice/049_1/zombierand2.ogg','sound/scp/voice/049_1/zombierand3.ogg',\
'sound/scp/voice/049_1/zombierand4.ogg','sound/scp/voice/049_1/zombierand5.ogg','sound/scp/voice/049_1/zombierand6.ogg','sound/scp/voice/049_1/zombierand7.ogg'))

/proc/playsound(atom/source, soundin, vol as num, vary, extrarange as num, falloff, is_global, frequency, is_ambiance = 0, ignore_walls = TRUE, ignore_pressure = FALSE)

	soundin = get_sfx(soundin) // same sound for everyone

	if(isarea(source))
		error("[source] is an area and is trying to make the sound: [soundin]")
		return

	soundin = get_sfx(soundin) // same sound for everyone
	frequency = vary && isnull(frequency) ? get_rand_frequency() : frequency // Same frequency for everybody

	var/turf/turf_source = get_turf(source)
	var/maxdistance = (world.view + extrarange) * 2

 	// Looping through the player list has the added bonus of working for mobs inside containers
	var/list/listeners = GLOB.player_list
	if(!ignore_walls) //these sounds don't carry through walls
		listeners = listeners & hearers(maxdistance, turf_source)

	for(var/P in listeners)
		var/mob/M = P
		if(!M || !M.client)
			continue
		if(get_dist(M, turf_source) <= maxdistance)
			var/turf/T = get_turf(M)

			if(T && T.z == turf_source.z && (!is_ambiance || M.get_preference_value(/datum/client_preference/play_ambiance) == GLOB.PREF_YES))
				M.playsound_local(turf_source, soundin, vol, vary, frequency, falloff, is_global, extrarange, ignore_pressure)

var/const/FALLOFF_SOUNDS = 0.5

/mob/proc/playsound_local(var/turf/turf_source, soundin, vol as num, vary, frequency, falloff, is_global, extrarange, ignore_pressure)
	if(!src.client || ear_deaf > 0)
		return
	var/sound/S = soundin
	if(!istype(S))
		soundin = get_sfx(soundin)
		S = sound(soundin)
		S.wait = 0 //No queue
		S.channel = 0 //Any channel
		S.volume = vol
		S.environment = -1
		if(frequency)
			S.frequency = frequency
		else if (vary)
			S.frequency = get_rand_frequency()

	//sound volume falloff with pressure
	var/pressure_factor = 1.0

	S.volume *= get_sound_volume_multiplier()

	var/turf/T = get_turf(src)
	// 3D sounds, the technology is here!
	if(isturf(turf_source))
		//sound volume falloff with distance
		var/distance = get_dist(T, turf_source)

		S.volume -= max(distance - (world.view + extrarange), 0) * 2 //multiplicative falloff to add on top of natural audio falloff.

		var/datum/gas_mixture/hearer_env = T.return_air()
		var/datum/gas_mixture/source_env = turf_source.return_air()

		if(!ignore_pressure)
			if (hearer_env && source_env)
				var/pressure = min(hearer_env.return_pressure(), source_env.return_pressure())
				if (pressure < ONE_ATMOSPHERE)
					pressure_factor = max((pressure - SOUND_MINIMUM_PRESSURE)/(ONE_ATMOSPHERE - SOUND_MINIMUM_PRESSURE), 0)
			else //in space
				pressure_factor = 0

			if (distance <= 1)
				pressure_factor = max(pressure_factor, 0.15)	//hearing through contact

		S.volume *= pressure_factor

		if (S.volume <= 0)
			return	//no volume means no sound

		var/dx = turf_source.x - T.x // Hearing from the right/left
		S.x = dx
		var/dz = turf_source.y - T.y // Hearing from infront/behind
		S.z = dz
		// The y value is for above your head, but there is no ceiling in 2d spessmens.
		S.y = 1
		S.falloff = (falloff ? falloff : FALLOFF_SOUNDS)

	if(!is_global)

		if(istype(src,/mob/living/))
			var/mob/living/carbon/M = src
			if (istype(M) && M.hallucination_power > 50 && M.chem_effects[CE_MIND] < 1)
				S.environment = PSYCHOTIC
			else if (M.druggy)
				S.environment = DRUGGED
			else if (M.drowsyness)
				S.environment = DIZZY
			else if (M.confused)
				S.environment = DIZZY
			else if (M.stat == UNCONSCIOUS)
				S.environment = UNDERWATER
			else if (T?.is_flooded(M.lying))
				S.environment = UNDERWATER
			else if (pressure_factor < 0.5)
				S.environment = SPACE
			else
				var/area/A = get_area(src)
				S.environment = A.sound_env

		else if (pressure_factor < 0.5)
			S.environment = SPACE
		else
			var/area/A = get_area(src)
			S.environment = A.sound_env

	sound_to(src, S)

/client/proc/playtitlemusic()
	if (get_preference_value(/datum/client_preference/play_lobby_music) == GLOB.PREF_YES)
		sound_to(src, GLOB.using_map.lobby_track.get_sound())
		to_chat(src, GLOB.using_map.lobby_track.get_info())

/proc/get_rand_frequency()
	return rand(32000, 55000) //Frequency stuff only works with 45kbps oggs.

/proc/get_sfx(soundin)
	if(istext(soundin))
		switch(soundin)
			if ("shatter") soundin = pick(GLOB.shatter_sound)
			if ("explosion") soundin = pick(GLOB.explosion_sound)
			if ("sparks") soundin = pick(GLOB.spark_sound)
			if ("rustle") soundin = pick(GLOB.rustle_sound)
			if ("punch") soundin = pick(GLOB.punch_sound)
			if ("clownstep") soundin = pick(GLOB.clown_sound)
			if ("swing_hit") soundin = pick(GLOB.swing_hit_sound)
			if ("hiss") soundin = pick(GLOB.hiss_sound)
			if ("pageturn") soundin = pick(GLOB.page_sound)
			if ("fracture") soundin = pick(GLOB.fracture_sound)
			if ("crack") soundin = pick(GLOB.crack_sound)
			if ("sizzle") soundin = pick(GLOB.sizzle_sound)
			if ("light_bic") soundin = pick(GLOB.lighter_sound)
			if ("keyboard") soundin = pick(GLOB.keyboard_sound)
			if ("keystroke") soundin = pick(GLOB.keystroke_sound)
			if ("switch") soundin = pick(GLOB.switch_sound)
			if ("button") soundin = pick(GLOB.button_sound)
			if ("chop") soundin = pick(GLOB.chop_sound)
			if ("glasscrack") soundin = pick(GLOB.glasscrack_sound)
			if ("tray_hit") soundin = pick(GLOB.tray_hit_sound)
			if ("gun_t12") soundin = pick(GLOB.t12_sound)
	return soundin

/client/verb/stop_sounds()
	set name = "Stop All Sounds"
	set desc = "Stop all sounds that are currently playing on your client."
	set category = "OOC"

	sound_to(usr, sound(null))

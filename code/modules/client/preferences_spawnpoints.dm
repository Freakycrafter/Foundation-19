GLOBAL_VAR(spawntypes)

/proc/spawntypes()
	if(!GLOB.spawntypes)
		GLOB.spawntypes = list()
		for(var/type in typesof(/datum/spawnpoint)-/datum/spawnpoint)
			var/datum/spawnpoint/S = type
			var/display_name = initial(S.display_name)
			if((display_name in GLOB.using_map.allowed_spawns) || initial(S.always_visible))
				GLOB.spawntypes[display_name] = new S
	return GLOB.spawntypes

/datum/spawnpoint
	var/msg		  //Message to display on the arrivals computer.
	var/list/turfs   //List of turfs to spawn on.
	var/display_name //Name used in preference setup.
	var/always_visible = FALSE	// Whether this spawn point is always visible in selection, ignoring map-specific settings.
	var/list/restrict_job = null
	var/list/disallow_job = null

/datum/spawnpoint/proc/check_job_spawning(job)
	if(restrict_job && !(job in restrict_job))
		return 0

	if(disallow_job && (job in disallow_job))
		return 0

	return 1

//Called after mob is created, moved to a turf and equipped.
/datum/spawnpoint/proc/after_join(mob/victim)
	return

#ifdef UNIT_TEST
/datum/spawnpoint/Del()
	crash_with("Spawn deleted: [log_info_line(src)]")
	..()

/datum/spawnpoint/Destroy()
	crash_with("Spawn destroyed: [log_info_line(src)]")
	. = ..()
#endif

/datum/spawnpoint/arrivals
	display_name = "Arrivals Shuttle"
	msg = "has arrived on the station"

/datum/spawnpoint/arrivals/New()
	..()
	turfs = GLOB.latejoin

/datum/spawnpoint/gateway
	display_name = "Gateway"
	msg = "has completed translation from offsite gateway"

/datum/spawnpoint/gateway/New()
	..()
	turfs = GLOB.latejoin_gateway

/datum/spawnpoint/cryo
	display_name = "Cryogenic Storage"
	msg = "has completed cryogenic revival"
	disallow_job = list("Robot", "Class D")

/datum/spawnpoint/cryo/New()
	..()
	turfs = GLOB.latejoin_cryo

/datum/spawnpoint/cryo/after_join(mob/living/carbon/human/victim)
	if(!istype(victim))
		return
	var/area/A = get_area(victim)
	var/list/cryopods = list()
	for(var/obj/machinery/cryopod/CR in A)
		cryopods += CR
	for(var/obj/machinery/cryopod/C in shuffle(cryopods))
		if(!C.occupant)
			C.set_occupant(victim, 1)
			victim.Sleeping(2)
			to_chat(victim,SPAN_NOTICE("You are slowly waking up from the cryostasis aboard [GLOB.using_map.full_name]. It might take a few seconds."))
			return

/datum/spawnpoint/cyborg
	display_name = "Cyborg Storage"
	msg = "has been activated from storage"
	restrict_job = list("Robot")

/datum/spawnpoint/cyborg/New()
	..()
	turfs = GLOB.latejoin_cyborg

/datum/spawnpoint/default
	display_name = DEFAULT_SPAWNPOINT_ID
	msg = "has arrived on the station"
	always_visible = TRUE

/datum/spawnpoint/comms
	display_name = "Comms Tower"
	msg = "has started a shift in the Comms Tower"
	restrict_job = list("Communications Officer", "Communications Technician")
	disallow_job = list(
	"Class D",
	"Cell Guard",
	"Chief Engineer",
	"Senior Engineer",
	"Containment Engineer",
	"Junior Engineer",
	"Engineer",
	"Chief Medical Officer",
	"Surgeon",
	"Virologist",
	"Medical Doctor",
	"Chemist"
	)

/datum/spawnpoint/comms/New()
	..()
	turfs = GLOB.latejoin_comms

/datum/spawnpoint/dclass
	display_name = "D-Cells"
	msg = "has been delivered to the Class D Area"
	restrict_job = list("Class D", "Assistant")

/datum/spawnpoint/dclass/New()
	..()
	turfs = GLOB.latejoin_dclass

/datum/spawnpoint/lcz
	display_name = "Light Containment Zone"
	msg = "has entered the light containment zone"

/datum/spawnpoint/lcz/New()
	..()
	turfs = GLOB.latejoin_lcz
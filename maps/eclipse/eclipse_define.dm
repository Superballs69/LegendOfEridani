/datum/map/eclipse
	name = "Eclipse"
	full_name = "EEV Eclipse"
	path = "eclipse"
	//flags = MAP_HAS_BRANCH | MAP_HAS_RANK

	admin_levels = list(7,8)
	empty_levels = list(9)
	accessible_z_levels = list("1"=1,"2"=3,"3"=1,"4"=1,"5"=1,"6"=1,"9"=30)
	overmap_size = 35
	overmap_event_areas = 34
	usable_email_tlds = list("eclipse.ssa.etf", "eclipse.etf", "freemail.net", "eclipse.etf")

	allowed_spawns = list("Cryogenic Storage", "Cyborg Storage")
	default_spawn = "Cryogenic Storage"

	station_name  = "EEV Eclipse"
	station_short = "Eclipse"
	dock_name     = "TBD"
	boss_name     = "Federal Control Agency"
	boss_short    = "FCA"
	company_name  = "Eridani Trade Federation"
	company_short = "ETF"

	map_admin_faxes = list("FCA Epsilon Office")

	//These should probably be moved into the evac controller...
	shuttle_docked_message = "Attention all hands: Jump preparation complete. The wormhole drive is now spooling up, secure all stations for departure. Time to jump: approximately %ETD%."
	shuttle_leaving_dock = "Attention all hands: Jump initiated, exiting wormhole in %ETA%."
	shuttle_called_message = "Attention all hands: Jump sequence initiated. Transit procedures are now in effect. Jump in %ETA%."
	shuttle_recall_message = "Attention all hands: Jump sequence aborted, return to normal operating conditions."

	evac_controller_type = /datum/evacuation_controller/starship

	default_law_type = /datum/ai_laws/solgov
	use_overmap = 1
	num_exoplanets = 1
	planet_size = list(105,105)

	away_site_budget = 9
	id_hud_icons = 'maps/eclipse/icons/assignment_hud.dmi'

/datum/map/eclipse/setup_map()
	..()
	system_name = generate_system_name()
	minor_announcement = new(new_sound = sound('sound/AI/torch/commandreport.ogg', volume = 45))

/datum/map/eclipse/map_info(victim)
	to_chat(victim, "<h2>Current map information</h2>")
	to_chat(victim, "You're aboard the <b>[station_name]</b>, an Eridani Trade Federation sanctioned mission. Its primary mission is looking for undiscovered sapient alien species, technological advancements and general exploration.")
	to_chat(victim, "The vessel is staffed with a mix of ETF government officials and ETF companies.")
	to_chat(victim, "This area of space is uncharted, away from SSA/ETF/FF territory, and a ship graveyard. Expect many different encounters along your journey.")

/datum/map/eclipse/send_welcome()
	var/welcome_text = "<center><img src = sollogo.png /><br /><font size = 3><b>EEV Eclipse</b> Sensor Readings:</font><br>"
	welcome_text += "Report generated on [stationdate2text()] at [stationtime2text()]</center><br /><br />"
	welcome_text += "<hr>Current system:<br /><b>[system_name()]</b><br /><br>"
	welcome_text += "Next system targeted for jump:<br /><b>[generate_system_name()]</b><br /><br>"
	welcome_text += "Travel time to Sol:<br /><b>[rand(15,45)] days</b><br /><br>"
	welcome_text += "Time since last port visit:<br /><b>[rand(60,180)] days</b><br /><hr>"
	welcome_text += "Scan results show the following points of interest:<br />"
	var/list/space_things = list()
	var/obj/effect/overmap/eclipse = map_sectors["1"]
	for(var/zlevel in map_sectors)
		var/obj/effect/overmap/O = map_sectors[zlevel]
		if(O.name == eclipse.name)
			continue
		space_things |= O

	var/list/distress_calls
	for(var/obj/effect/overmap/O in space_things)
		var/location_desc = " at present co-ordinates."
		if(O.loc != eclipse.loc)
			var/bearing = round(90 - Atan2(O.x - eclipse.x, O.y - eclipse.y),5) //fucking triangles how do they work
			if(bearing < 0)
				bearing += 360
			location_desc = ", bearing [bearing]."
		if(O.has_distress_beacon)
			LAZYADD(distress_calls, "[O.has_distress_beacon][location_desc]")
		welcome_text += "<li>\A <b>[O.name]</b>[location_desc]</li>"

	if(LAZYLEN(distress_calls))
		welcome_text += "<br><b>Distress calls logged:</b><br>[jointext(distress_calls, "<br>")]<br>"
	else
		welcome_text += "<br>No distress calls logged.<br />"
	welcome_text += "<hr>"

	post_comm_message("EEV Eclipse Sensor Readings", welcome_text)
	minor_announcement.Announce(message = "New [GLOB.using_map.company_name] Update available at all communication consoles.")

/turf/simulated/wall //landlubbers go home
	name = "bulkhead"

/turf/simulated/floor
	name = "bare deck"

/turf/simulated/floor/tiled
	name = "deck"

/decl/flooring/tiling
	name = "deck"

/obj/machinery/computer/rdconsole/petrov
	name = "petrov fabricator console"
	id = 3

/turf/simulated/floor/shuttle_ceiling/eclipse
	color = COLOR_HULL

/turf/simulated/floor/shuttle_ceiling/eclipse/air
	initial_gas = list("oxygen" = MOLES_O2STANDARD, "nitrogen" = MOLES_N2STANDARD)
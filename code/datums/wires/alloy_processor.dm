/datum/wires/alloy_processor

	holder_type = /obj/machinery/autolathe
	wire_count = 6
	descriptions = list(
//		new /datum/wire_description(ALLOY_PROCESSOR_HACK_WIRE, "This wire appears to lead to an auxiliary data storage unit."),
		new /datum/wire_description(ALLOY_PROCESSOR_SHOCK_WIRE, "This wire seems to be carrying a heavy current."),
		new /datum/wire_description(ALLOY_PROCESSOR_DISABLE_WIRE, "This wire is connected to the power switch.", SKILL_EXPERT)
	)

//var/const/AUTOLATHE_HACK_WIRE = 1
var/const/ALLOY_PROCESSOR_SHOCK_WIRE = 2
var/const/ALLOY_PROCESSOR_DISABLE_WIRE = 4

/datum/wires/alloy_processor/GetInteractWindow(mob/user)
	var/obj/machinery/alloy_processor/A = holder
	. += ..()
	. += "<BR>The red light is [A.disabled ? "off" : "on"]."
	. += "<BR>The green light is [A.shocked ? "off" : "on"]."
	. += "<BR>The blue light is [A.hacked ? "off" : "on"].<BR>"

/datum/wires/alloy_processor/CanUse()
	var/obj/machinery/alloy_processor/A = holder
	if(A.panel_open)
		return 1
	return 0

/datum/wires/alloy_processor/Interact(var/mob/living/user)
	if(CanUse(user))
		var/obj/machinery/alloy_processor/V = holder
		V.attack_hand(user)

/datum/wires/alloy_processor/UpdateCut(index, mended)
	var/obj/machinery/alloy_processor/A = holder
	switch(index)
	//	if(AUTOLATHE_HACK_WIRE)
	//		A.hacked = !mended
		if(AUTOLATHE_SHOCK_WIRE)
			A.shocked = !mended
		if(AUTOLATHE_DISABLE_WIRE)
			A.disabled = !mended

/datum/wires/alloy_processor/UpdatePulsed(index)
	if(IsIndexCut(index))
		return
	var/obj/machinery/autolathe/A = holder
	switch(index)
	//	if(AUTOLATHE_HACK_WIRE)
	//		A.hacked = !A.hacked
	//		spawn(50)
	//			if(A && !IsIndexCut(index))
	//				A.hacked = 0
	//				Interact(usr)
		if(AUTOLATHE_SHOCK_WIRE)
			A.shocked = !A.shocked
			spawn(50)
				if(A && !IsIndexCut(index))
					A.shocked = 0
					Interact(usr)
		if(AUTOLATHE_DISABLE_WIRE)
			A.disabled = !A.disabled
			spawn(50)
				if(A && !IsIndexCut(index))
					A.disabled = 0
					Interact(usr)
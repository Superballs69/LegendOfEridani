/obj/machinery/firecamp
	use_power = 0
	anchored = 0
	density = 1
	icon = 'icons/obj/atmos.dmi'
	icon_state = "firecamp-off"
	name = "firecamp"
	desc = "A traditional fire camp. Keeps you warm!"
	var/fuel = 0
	var/on = 0
	var/set_temperature = T0C + 30	//K
	var/active = 0
	var/heating_power = 150 KILOWATTS


/obj/machinery/firecamp/on_update_icon(var/rebuild_overlay = 0)
	if(!on)
		icon_state = "firecamp-off"
		set_light(0)
	else
		icon_state = "firecamp-on"
		set_light(0.7, 2, 6, 3, COLOR_SEDONA)

/obj/machinery/firecamp/examine(mob/user)
	. = ..(user)

	to_chat(user, "The firecamp is [on ? "on" : "off"] ")
	return

/obj/machinery/firecamp/attackby(obj/item/I, mob/user)
	if(istype(I, /obj/item/weapon/flame/lighter))
		on = 1
		to_chat(user, "You turn on the fire with the lighter.")
	else
		..()
	return

/obj/machinery/firecamp/attack_hand(mob/user as mob)
	..()
	if(on)
		on = 0
		to_chat(user, "You turn off the fire.")
	else
		to_chat(user, "The fire was already extinguished.")
	return


/obj/machinery/firecamp/Process()
	if(on)
		var/datum/gas_mixture/env = loc.return_air()
		if(env && abs(env.temperature - set_temperature) <= 0.1)
			active = 0
		else
			var/transfer_moles = 0.25 * env.total_moles
			var/datum/gas_mixture/removed = env.remove(transfer_moles)

			if(removed)
				var/heat_transfer = removed.get_thermal_energy_change(set_temperature)
				var/power_draw
				if(heat_transfer > 0)	//heating air
					heat_transfer = min( heat_transfer , heating_power ) //limit by the power rating of the heater

					removed.add_thermal_energy(heat_transfer)
					power_draw = heat_transfer
				else	//cooling air
					heat_transfer = abs(heat_transfer)

						//Assume the heat is being pumped into the hull which is fixed at 20 C
					var/cop = removed.temperature/T20C	//coefficient of performance from thermodynamics -> power used = heat_transfer/cop
					heat_transfer = min(heat_transfer, cop * heating_power)	//limit heat transfer by available power

					heat_transfer = removed.add_thermal_energy(-heat_transfer)	//get the actual heat transfer

					power_draw = abs(heat_transfer)/cop
					use_power(power_draw)
				active = heat_transfer

			env.merge(removed)
		update_icon()




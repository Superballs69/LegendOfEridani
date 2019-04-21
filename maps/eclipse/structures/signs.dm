/obj/structure/sign/dedicationplaque
	name = "\improper EEV Eclipse dedication plaque"
	desc = "E.E.V. Eclipse - Keller Class - Federal Control Agency Registry 95519 - Wulfe Fleet Yards, Neue Berlin - First Vessel To Bear The Name - Launched 2618 - Eridani Trade Federation - 'Head first, into the galaxy.'"
	icon = 'maps/eclipse/icons/obj/etf-decals.dmi'
	icon_state = "lightplaque"

/obj/structure/sign/ecplaque
	name = "\improper Pathfinder Corps Directives"
	desc = "A plaque with Pathfinder Corps logo etched in it."
	icon = 'maps/eclipse/icons/obj/etf-decals.dmi'
	icon_state = "ecplaque"
	var/directives = {"<hr><center>
		1. <b>Exploring the unknown is your Primary Mission</b><br>

		You are to look for land and resources that can be used to advance and prosper. Explore. Document. Explain. Knowledge is the most valuable resource.<br>

		2. <b>Every member of the Pathfinder Corps is an explorer</b><br>

		Some are Explorers by rank or position, but everyone has to be one when duty calls. You should always expect being assigned to an expedition if needed. You have already volunteered when you signed up.<br>

		3. <b>Danger is a part of the mission - avoid, not run away</b> <br>

		Keep your crew alive and hull intact, but remember - you are not here to sightsee. Dangers are obstacles to be cleared, not the roadblocks. Weigh risks carefully and keep your Primary Mission in mind.
		</center><hr>"}

/obj/structure/sign/ecplaque/examine()
	..()
	to_chat(usr, "The founding principles of EC are written there: <A href='?src=\ref[src];show_info=1'>Expeditionary Directives</A>")

/obj/structure/sign/ecplaque/CanUseTopic()
	return STATUS_INTERACTIVE

/obj/structure/sign/ecplaque/OnTopic(href, href_list)
	if(href_list["show_info"])
		to_chat(usr, directives)
		return TOPIC_HANDLED

/obj/structure/sign/ecplaque/attackby(var/obj/I, var/mob/user)
	if(istype(I, /obj/item/grab))
		var/obj/item/grab/G = I
		if(!ishuman(G.affecting))
			return
		G.affecting.apply_damage(5, BRUTE, BP_HEAD, used_weapon="Metal Plaque")
		visible_message("<span class='warning'>[G.assailant] smashes [G.assailant] into \the [src] face-first!</span>")
		playsound(get_turf(src), 'sound/weapons/tablehit1.ogg', 50)
		to_chat(G.affecting, "<span class='danger'>[directives]</span>")
		admin_attack_log(user, G.affecting, "educated victim on \the [src].", "Was educated on \the [src].", "used \a [src] to educate")
		G.force_drop()
	else
		..()

/obj/effect/floor_decal/scglogo
	alpha = 230
	icon = 'maps/eclipse/icons/obj/solgov_floor.dmi'
	icon_state = "center"

/obj/structure/sign/etf
	name = "\improper ETF Seal"
	desc = "A sign which signifies who this vessel belongs to. The SSA Crest has been removed, that's something."
	icon = 'maps/eclipse/icons/obj/etf-decals.dmi'
	icon_state = "etfseal"

/obj/structure/sign/double/etfflag
	name = "Eridani Trade Federation Flag"
	desc = "The flag of the Eridani Trade Federation, standing proud. It appears it's SSA Crest has been removed, however. Unusual."
	icon = 'maps/eclipse/icons/obj/etf-decals.dmi'

/obj/structure/sign/double/etfflag/left
	icon_state = "etfflag-left"

/obj/structure/sign/double/etfflag/right
	icon_state = "etfflag-right"

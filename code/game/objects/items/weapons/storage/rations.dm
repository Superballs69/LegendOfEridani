/*
/ Ration packs, eh?
*/

/obj/item/weapon/storage/ration
	name = "meal, ready to eat"
	desc = "A pouch containing enough shelf-stable food for the caloric needs of one day. SSA issue."
	icon = 'icons/obj/food_ration.dmi'
	storage_slots = 7
	w_class = ITEM_SIZE_SMALL
	max_w_class = ITEM_SIZE_SMALL
	icon_state = "ration"
	var/opened = FALSE
	var/global/image/label_overlay

	startswith = list(
	/obj/item/weapon/reagent_containers/food/snacks/ration/cracker = 2,
	/obj/item/weapon/reagent_containers/food/snacks/ration/bar,
	/obj/item/weapon/reagent_containers/food/snacks/ration/entree/enchiladas,
	/obj/item/weapon/reagent_containers/food/snacks/ration/side/cheesyfries,
		)

/obj/item/weapon/storage/ration/on_update_icon()
	overlays.Cut()
	if(!label_overlay)
		label_overlay = image(icon, "label")
		label_overlay.appearance_flags = RESET_COLOR
	overlays += label_overlay
	icon_state = "[initial(icon_state)][opened]"

/obj/item/weapon/storage/ration/attack_self(mob/user)
	open(user)

/obj/item/weapon/storage/ration/open(mob/user)
	if(!opened)
		user.visible_message("<span class='notice'>\The [user] tears open [src], breaking the plastic seal!</span>", "<span class='notice'>You tear open [src], breaking the plastic seal!</span>")
		opened = 1
		update_icon()
	. = ..()


//Ration packs

/obj/item/weapon/storage/ration/frontier
	name = "individual combat ration"
	desc = "A Frontier Federation issue ration. Highly coveted by many due to better quality and better taste."
	icon_state = "frontier"

	startswith = list(
	/obj/item/weapon/reagent_containers/food/snacks/ration/cracker = 2,
	/obj/item/weapon/reagent_containers/food/snacks/ration/bar,
	/obj/item/weapon/reagent_containers/food/snacks/ration/entree/cheeseburger,
	/obj/item/weapon/reagent_containers/food/snacks/ration/side/creamcheesebread,
		)

/obj/item/weapon/storage/ration/humanitarian
	name = "alliance humanitarian ration"
	desc = "An Alliance humanitarian food ration. Regarded as the worst possible tasting food, but also the most nutritious. Rival to the LiquidFood MRE."
	icon_state = "alliance_aid"

	startswith = list(
	/obj/item/weapon/reagent_containers/food/snacks/ration/cracker = 2,
	/obj/item/weapon/reagent_containers/food/snacks/ration/bar,
	/obj/item/weapon/reagent_containers/food/snacks/ration/entree/stewedsoymeat,
	/obj/item/weapon/reagent_containers/food/snacks/ration/side/soydope,
		)

/obj/item/weapon/storage/ration/frontier/humanitarian
	name = "frontier food gift"
	desc = "A Frontier Federation humanitarian daily ration. The polar opposite of it's Alliance counterpart. Great tasting, and commonly seen throughout the galaxy."
	icon_state = "frontier_aid"

	startswith = list(
	/obj/item/weapon/reagent_containers/food/snacks/ration/cracker = 2,
	/obj/item/weapon/reagent_containers/food/snacks/ration/bar,
	/obj/item/weapon/reagent_containers/food/snacks/ration/entree/eggplantparm,
	/obj/item/weapon/reagent_containers/food/snacks/ration/side/onionrings,
		)

//Small snack items
/obj/item/weapon/reagent_containers/food/snacks/ration
	name = "shelf stable food"
	desc = "You shouldn't be seeing this."

/obj/item/weapon/reagent_containers/food/snacks/ration/cracker
	name = "army biscuit"
	desc = "It's a salted cracker."
	icon_state = "ration_snack"
	filling_color = "#f5deb8"
	center_of_mass = "x=17;y=6"
	nutriment_desc = list("salt" = 1, "cracker" = 2)
	nutriment_amt = 15
	bitesize = 3

/obj/item/weapon/reagent_containers/food/snacks/ration/bar
	name = "energy bar"
	desc = "A very nutritious energy bar. Shelf stable, designed to keep you going!"
	icon_state = "ration_bar"
	bitesize = 6
	nutriment_desc = list("dried fruit" = 3, "caffeine" = 1, "nuts and granola" = 2)

/obj/item/weapon/reagent_containers/food/snacks/ration/bar/Initialize()
	.=..()
	reagents.add_reagent(/datum/reagent/nutriment, 9)
	reagents.add_reagent(/datum/reagent/drink/coffee, 4)
	reagents.add_reagent(/datum/reagent/sugar, 4)

//Food entrees
/obj/item/weapon/reagent_containers/food/snacks/ration/entree/
    icon_state = "ration_entree"

/obj/item/weapon/reagent_containers/food/snacks/ration/entree/cheeseburger
	name = "cheese burger"
	desc = "A vaccuum sealed and shelf stable cheeseburger. Suprisingly delicious and fresh."
	nutriment_desc = list("cheese" = 2, "bun" = 2)
	nutriment_amt = 3

/obj/item/weapon/reagent_containers/food/snacks/ration/entree/cheeseburger/Initialize()
	.=..()
	reagents.add_reagent(/datum/reagent/nutriment/protein, 2)

/obj/item/weapon/reagent_containers/food/snacks/ration/entree/enchiladas
	name = "enchiladas"
	desc = "Viva La Space Mexico! Now in a vaccuum bag!"
	filling_color = "#a36a1f"
	nutriment_desc = list("tortilla" = 3, "corn" = 3)
	nutriment_amt = 2
	bitesize = 4

/obj/item/weapon/reagent_containers/food/snacks/ration/entree/enchiladas/Initialize()
	.=..()
	reagents.add_reagent(/datum/reagent/nutriment/protein, 6)
	reagents.add_reagent(/datum/reagent/capsaicin, 6)

/obj/item/weapon/reagent_containers/food/snacks/ration/entree/stewedsoymeat
	name = "stewed soy meat"
	desc = "Even non-vegetarians will LOVE this! Now in a vaccuum bag!"
	nutriment_desc = list("soy" = 4, "tomato" = 4)
	nutriment_amt = 6
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/ration/entree/eggplantparm
	name = "eggplant parmigiana"
	desc = "The only good recipe for eggplant."
	filling_color = "#4d2f5e"
	nutriment_desc = list("cheese" = 3, "eggplant" = 3)
	nutriment_amt = 6
	bitesize = 2

//Sides
/obj/item/weapon/reagent_containers/food/snacks/ration/side
    icon_state = "ration_side"

/obj/item/weapon/reagent_containers/food/snacks/ration/side/creamcheesebread
	name = "cream cheese bread slice"
	desc = "A slice of yum! Vaccuum sealed!"
	filling_color = "#fff896"
	nutriment_amt = 2
	nutriment_desc = list("bread" = 6, "cream" = 3, "cheese" = 3)
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/ration/side/creamcheesebread/Initialize()
	.=..()
	reagents.add_reagent(/datum/reagent/nutriment/protein, 2)

/obj/item/weapon/reagent_containers/food/snacks/ration/side/cheesyfries
	name = "cheesy fries"
	desc = "Fries. Covered in cheese. Duh."
	filling_color = "#eddd00"
	nutriment_desc = list("fries" = 3, "cheese" = 3)
	nutriment_amt = 1
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/ration/side/cheesyfries/Initialize()
	.=..()
	reagents.add_reagent(/datum/reagent/nutriment/protein, 1)

/obj/item/weapon/reagent_containers/food/snacks/ration/side/soydope
	name = "soy dope"
	desc = "Dope from a soy. In a vacuum bag."
	trash = /obj/item/trash/plate
	filling_color = "#c4bf76"
	nutriment_desc = list("slime" = 2, "soy" = 2)
	nutriment_amt = 2
	bitesize = 2

/obj/item/weapon/reagent_containers/food/snacks/ration/side/onionrings
	name = "onion rings"
	desc = "Like circular fries but better."
	filling_color = "#eddd00"
	center_of_mass = "x=16;y=11"
	nutriment_desc = list("fried onions" = 5)
	nutriment_amt = 2
	bitesize = 2

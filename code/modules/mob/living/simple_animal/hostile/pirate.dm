/mob/living/simple_animal/hostile/pirate
	name = "pirate"
	desc = "These people don't look too friendly."
	icon_state = "pirate1"
	icon_living = "pirate1"
	speak_chance = 0
	turns_per_move = 5
	response_help = "pushes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 0
	stop_automated_movement_when_pulled = 0
	maxHealth = 200
	health = 200
	can_escape = 1
	harm_intent_damage = 5
	melee_damage_lower = 30
	melee_damage_upper = 30
	attacktext = "slashed"
	attack_sound = 'sound/weapons/bladeslice.ogg'
	unsuitable_atmos_damage = 15
	var/corpse = /obj/effect/landmark/corpse/pirate
	var/weapon1 = /obj/item/weapon/material/hatchet/tacknife/bayonet
	var/loot = null
	faction = "pirate"

/mob/living/simple_animal/hostile/pirate/death(gibbed, deathmessage, show_dead_message)
	..(gibbed, deathmessage, show_dead_message)
	if(corpse)
		new corpse (src.loc)
	if(weapon1)
		new weapon1 (src.loc)
	if(loot)
		new loot (src.loc)
	qdel(src)
	return

/mob/living/simple_animal/hostile/pirate/shield
	name = "pirate"
	icon_state = "pirate2"
	icon_living = "pirate2"
	projectilesound = 'sound/weapons/Taser.ogg'
	maxHealth = 600
	health = 600
	ranged = 1
	speed = 2
	projectiletype = /obj/item/projectile/beam/stun
	corpse = /obj/effect/landmark/corpse/pirate/shield
	weapon1 = /obj/item/weapon/gun/energy/gun/pistol
	loot = /obj/item/weapon/shield/riot/metal

/mob/living/simple_animal/hostile/pirate/shield/attackby(var/obj/item/O as obj, var/mob/user as mob)
	if(O.force)
		if(prob(80))
			var/damage = O.force
			if (O.damtype == PAIN)
				damage = 0
			health -= damage
			visible_message("<span class='danger'>\The [src] has been attacked with \the [O] by \the [user].</span>")
		else
			visible_message("<span class='danger'>\The [src] blocks the [O] with its shield!</span>")
		//user.do_attack_animation(src)
	else
		to_chat(usr, "<span class='warning'>This weapon is ineffective, it does no damage.</span>")
		visible_message("<span class='warning'>\The [user] gently taps \the [src] with \the [O].</span>")


/mob/living/simple_animal/hostile/pirate/shield/bullet_act(var/obj/item/projectile/Proj)
	if(!Proj)	return
	if(prob(65))
		src.health -= Proj.damage
	else
		visible_message("<span class='danger'>\The [src] blocks \the [Proj] with its shield!</span>")
	return 0

/mob/living/simple_animal/hostile/pirate/pistoleer
	name = "pirate"
	icon_state = "pirate3"
	icon_living = "pirate3"
	projectilesound = 'sound/weapons/gunshot/usp.ogg'
	maxHealth = 200
	health = 200
	ranged = 1
	projectiletype = /obj/item/projectile/bullet/pistol/medium
	corpse = /obj/effect/landmark/corpse/pirate/pistoleer
	weapon1 = /obj/item/weapon/gun/projectile/usp
	casingtype = /obj/item/ammo_casing/c45/used
	loot = /obj/item/weapon/material/hatchet/tacknife/bayonet

/mob/living/simple_animal/hostile/pirate/bodyguard
	name = "pirate leader's bodyguard"
	icon_state = "pirate4"
	icon_living = "pirate4"
	projectilesound = 'sound/weapons/gunshot/sts35.ogg'
	maxHealth = 800
	health = 800
	ranged = 1
	rapid = 1
	speed = 1
	projectiletype = /obj/item/projectile/bullet/rifle/a556
	corpse = /obj/effect/landmark/corpse/pirate/bodyguard
	weapon1 = /obj/item/weapon/gun/projectile/automatic/sts35
	casingtype = /obj/item/ammo_casing/a556/used
	loot = /obj/item/ammo_magazine/m556

/mob/living/simple_animal/hostile/pirate/leader
	name = "pirate leader"
	icon_state = "pirate5"
	icon_living = "pirate5"
	projectilesound = 'sound/weapons/gunshot/mateba.ogg'
	maxHealth = 800
	health = 800
	ranged = 1
	speed = 4
	projectiletype = /obj/item/projectile/bullet/pistol/strong
	corpse = /obj/effect/landmark/corpse/pirate/leader
	weapon1 = /obj/item/weapon/gun/projectile/deagle/lamia/mk2
	loot = /obj/item/weapon/shield/riot/extendable
	casingtype = /obj/item/ammo_casing/a50/used

/mob/living/simple_animal/hostile/pirate/leader/attackby(var/obj/item/O as obj, var/mob/user as mob)
	if(O.force)
		if(prob(90))
			var/damage = O.force
			if (O.damtype == PAIN)
				damage = 0
			health -= damage
			visible_message("<span class='danger'>\The [src] has been attacked with \the [O] by \the [user].</span>")
		else
			visible_message("<span class='danger'>\The [src] blocks the [O] with its shield!</span>")
		//user.do_attack_animation(src)
	else
		to_chat(usr, "<span class='warning'>This weapon is ineffective, it does no damage.</span>")
		visible_message("<span class='warning'>\The [user] gently taps \the [src] with \the [O].</span>")


/mob/living/simple_animal/hostile/pirate/leader/bullet_act(var/obj/item/projectile/Proj)
	if(!Proj)	return
	if(prob(80))
		src.health -= Proj.damage
	else
		visible_message("<span class='danger'>\The [src] blocks \the [Proj] with its shield!</span>")
	return 0



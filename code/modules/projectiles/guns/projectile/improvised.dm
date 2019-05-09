/obj/item/weapon/gun/projectile //fail chances for firearms when first fired, make sure these are zero if the weapon is not craftable
    var/fail_chance = 0
    var/construction_level = 0
    var/weapon_level = 0

/obj/item/weapon/gun/projectile/examine(mob/user)
    . = ..()
    if(construction_level == 1)
        to_chat(user, "<span class='notice'>The construction is of very low quality.</span>")
    if(construction_level == 2)
        to_chat(user, "<span class='notice'>The construction is of low quality.</span>")
    if(construction_level == 3)
        to_chat(user, "<span class='notice'>The construction is of average quality.</span>")
    if(construction_level == 4)
        to_chat(user, "<span class='notice'>The construction is of high quality.</span>")
    if(construction_level == 5)
        to_chat(user, "<span class='notice'>The construction is flawless.</span>")

    if(weapon_level == 1)
        to_chat(user, "<span class='notice'>The weapon mechanics are very low quality.</span>")
    if(weapon_level == 2)
        to_chat(user, "<span class='notice'>The weapon mechanics are low quality.</span>")
    if(weapon_level == 3)
        to_chat(user, "<span class='notice'>The weapon mechanics are average quality.</span>")
    if(weapon_level == 4)
        to_chat(user, "<span class='notice'>The weapon mechanics are high quality.</span>")
    if(weapon_level == 5)
        to_chat(user, "<span class='notice'>The weapon mechanics are flawless.</span>")

/obj/item/weapon/gun/projectile/special_check(mob/living/carbon/human/M) //Rolls a percentage based on the weapons fail chance. If it passes, it blows up.
    if(prob(fail_chance))
        M.visible_message("<span class='danger'>[M]'s weapon blows up, shattering into pieces!</span>","<span class='danger'>[src] blows up in your face!</span>", "You hear a loud bang!")
        playsound(loc, fire_sound, 50, 1)
        M.adjustBruteLoss(rand(25,60))
        M.drop_item()
        qdel(src)
        return 0
    return ..()

/obj/item/weapon/gun/projectile/revolver/improvised
    name = "improvised revolver"
    desc = "An improvised revolver made in a small workshop. Uses .38 special rounds."
    icon = 'icons/obj/gun_crafted.dmi'
    icon_state = "revolver"
    item_state = "revolver"
    caliber = ".38"
    origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
    handle_casings = CYCLE_CASINGS
    max_shells = 6
    accuracy = 0
    fire_delay = 6.75 //Revolvers are naturally slower-firing
    ammo_type = /obj/item/ammo_casing/a38
    jam_chance = 0
    starts_loaded = 0

/obj/item/weapon/gun/projectile/improvised
    name = "improvised pistol"
    desc = "An improvised semi-automatic handgun made in a small workshop. Uses single stack 9x19mm magazines."
    magazine_type = /obj/item/ammo_magazine/mc9mm
    allowed_magazines = /obj/item/ammo_magazine/mc9mm
    icon = 'icons/obj/gun_crafted.dmi'
    icon_state = "pistol"
    caliber = "9mm"
    origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 2)
    load_method = MAGAZINE
    fire_sound = 'sound/weapons/gunshot/p92x.ogg'
    starts_loaded = 0

/obj/item/weapon/gun/projectile/improvised/on_update_icon()
    ..()
    if(ammo_magazine && ammo_magazine.stored_ammo.len)
        icon_state = "[initial(icon_state)]"
    else
        icon_state = "[initial(icon_state)]-e"

/obj/item/weapon/gun/projectile/automatic/improvised
    name = "improvised 9mm sub machine gun"
    desc = "An improvised straight blowback submachinegun made in a small workshop. Uses 9x19mm stick magazines."
    icon = 'icons/obj/gun_crafted.dmi'
    icon_state = "custom_smg"
    item_state = "wt550"
    w_class = ITEM_SIZE_NORMAL
    load_method = MAGAZINE
    caliber = "9mm"
    origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2, TECH_ILLEGAL = 3)
    slot_flags = SLOT_BELT
    magazine_type = /obj/item/ammo_magazine/m9mmmac
    allowed_magazines = /obj/item/ammo_magazine/m9mmmac
    burst_accuracy=list(0,-1,-1,-1,-2)
    dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)
    fire_sound = 'sound/weapons/gunshot/wt550.ogg'
    starts_loaded = 0

    firemodes = list(
        list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
        list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=3,    one_hand_penalty=1),
        )

/obj/item/weapon/gun/projectile/automatic/improvised/on_update_icon()
    ..()
    if(ammo_magazine)
        icon_state = "[initial(icon_state)]"
    else
        icon_state = "[initial(icon_state)]-empty"

/obj/item/weapon/gun/projectile/automatic/improvised/smg_45
    name = "improvised .45 sub machine gun"
    desc = "An improvised straight blowback submachinegun made in a small workshop. Uses 9x19mm stick magazines."
    icon = 'icons/obj/gun_crafted.dmi'
    icon_state = "smg2"
    item_state = "sawnshotgun"
    w_class = ITEM_SIZE_NORMAL
    load_method = MAGAZINE
    caliber = ".45"
    origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2, TECH_ILLEGAL = 3)
    slot_flags = SLOT_BELT
    magazine_type = /obj/item/ammo_magazine/m45mds
    allowed_magazines = /obj/item/ammo_magazine/m45mds
    burst_accuracy=list(0,-1,-1,-1,-2)
    dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)
    fire_sound = 'sound/weapons/gunshot/gunshot_smg.ogg'
    starts_loaded = 0

    firemodes = list(
        list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
        list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=2),
        )

/obj/item/weapon/gun/projectile/automatic/improvised/on_update_icon()
    ..()
    if(ammo_magazine)
        icon_state = "[initial(icon_state)]"
    else
        icon_state = "[initial(icon_state)]-empty"

//Improvised firearm parts
/obj/item/weapon/crafting/parts
    name = "gun parts"
    desc = "You shouldn't see this, contact a developer!"
    icon = 'icons/obj/gun_crafted.dmi'
    icon_state = "parts1"
    w_class = ITEM_SIZE_TINY

/obj/item/weapon/crafting/parts/improvised
    name = "handmade gun parts"
    desc = "A mixed assortment of rudimentary springs, fittings and stampings for a gun."

/obj/item/weapon/crafting/parts/high_quality
    name = "high quality gun parts"
    desc = "A mixed assortment of properly made high tolerance firearms parts."
    icon_state = "parts2"

/obj/item/weapon/crafting/parts/grips
    name = "wooden gun grips"
    desc = "A mix of carved wooden weapon grips."
    icon_state = "parts3"
    w_class = ITEM_SIZE_SMALL

/obj/item/weapon/crafting/receiver
    icon = 'icons/obj/gun_crafted.dmi'
    var/buildstate = 0

/obj/item/weapon/crafting/receiver/proc/check_construction(obj/item/weapon/gun/projectile/F, mob/user)
    if(user.skill_check(SKILL_CONSTRUCTION, SKILL_NONE))
        F.jam_chance = rand(70,99)
        F.fail_chance = rand(70,99)
        if(istype(F,/obj/item/weapon/gun/projectile/automatic))
            F.burst_delay = 5
        F.construction_level = 1
        F.has_safety = FALSE
    else if(user.skill_check(SKILL_CONSTRUCTION, SKILL_BASIC))
        F.jam_chance = rand(20,70)
        F.fail_chance = rand(20,50)
        if(istype(F,/obj/item/weapon/gun/projectile/automatic))
            F.burst_delay = 4
        F.construction_level = 2
        F.has_safety = FALSE
    else if(user.skill_check(SKILL_CONSTRUCTION, SKILL_ADEPT))
        F.jam_chance = rand(0,20)
        F.fail_chance = 0 //Atleast the gun wont blow up in your face anymore.
        if(istype(F,/obj/item/weapon/gun/projectile/automatic))
            F.burst_delay = 3
        F.construction_level = 3
    else if(user.skill_check(SKILL_CONSTRUCTION, SKILL_EXPERT)) //Experienced or higher for a safe firearm.
        F.jam_chance = 0
        F.fail_chance = 0
        if(istype(F,/obj/item/weapon/gun/projectile/automatic))
            F.burst_delay = 2
        F.construction_level = 4
    else if(user.skill_check(SKILL_CONSTRUCTION, SKILL_PROF))
        F.jam_chance = 0
        F.fail_chance = 0
        F.fire_delay = F.fire_delay/2 //Halfed fire delay, wow!
        if(istype(F,/obj/item/weapon/gun/projectile/automatic))
            F.burst_delay = 1
        F.construction_level= 5

/obj/item/weapon/crafting/receiver/proc/check_weapons(obj/item/weapon/gun/projectile/F, mob/user)
    if(user.skill_check(SKILL_WEAPONS, SKILL_NONE))
        F.accuracy = rand(-1.0,-2.0)
        F.fire_delay = rand(5,4)
        if(istype(F,/obj/item/weapon/gun/projectile/automatic))
            F.burst_accuracy=list(-2,-3,-3,-3,-4)
            F.dispersion=list(1.0, 1.0, 1.4, 1.4, 1.6)
        F.screen_shake = 2
        F.weapon_level = 1
    if(user.skill_check(SKILL_WEAPONS, SKILL_BASIC))
        F.accuracy = rand(-1.0,-0.50)
        F.fire_delay = 3
        if(istype(F,/obj/item/weapon/gun/projectile/automatic))
            F.burst_accuracy=list(-1,-2,-2,-2,-3)
            F.dispersion=list(0.8, 0.8, 1.2, 1.2, 1.4)
        F.screen_shake = 1
        F.weapon_level = 2
    if(user.skill_check(SKILL_WEAPONS, SKILL_ADEPT))
        F.accuracy = rand(0.0,0.75)
        F.fire_delay = 2
        if(istype(F,/obj/item/weapon/gun/projectile/automatic))
            F.burst_accuracy=list(0,-1,-1,-1,-2)
            F.dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)
        F.screen_shake = 1
        F.weapon_level = 3
    if(user.skill_check(SKILL_WEAPONS, SKILL_EXPERT))
        F.accuracy = rand(0.75,1)
        F.fire_delay = 1
        if(istype(F,/obj/item/weapon/gun/projectile/automatic))
            F.burst_accuracy=list(1, 0, 0, 0, -1)
            F.dispersion=list(0.4, 0.4, 0.8, 0.8, 1.0)
        F.screen_shake = 0
        F.weapon_level = 4
    if(user.skill_check(SKILL_WEAPONS, SKILL_PROF))
        F.accuracy = rand(1.0,2.0)
        F.fire_delay = 0
        if(istype(F,/obj/item/weapon/gun/projectile/automatic))
            F.burst_accuracy=list(2, 1, 1, 1, 0)
            F.dispersion=list(0.2, 0.2, 0.6, 0.6, 0.8)
        F.screen_shake = 0
        F.weapon_level = 5

/obj/item/weapon/crafting/receiver/update_icon()
    icon_state = "[initial(icon_state)]_[buildstate]"

/obj/item/weapon/crafting/receiver/revolver
    name = "revolver frame"
    desc = "A frame for an improvised revolver."
    icon_state = "receiver_revolver"
    item_state = "revolver"
    w_class = ITEM_SIZE_NORMAL

/obj/item/weapon/crafting/receiver/revolver/examine(mob/user)
    ..(user)
    switch(buildstate)
        if(1) user << "It has a cylinder installed, but needs openings cut out."
        if(2) user << "It has a cylinder installed."
        if(3) user << "It has a cylinder installed as well as a trigger group."

/obj/item/weapon/crafting/receiver/revolver/attackby(obj/item/weapon/W, mob/user)
    if(istype(W,/obj/item/weapon/crafting/parts/improvised))
        if(buildstate == 0)
            qdel(W)
            user << "<span class='notice'>You install the cylinder into the frame.</span>"
            buildstate++
            update_icon()
            return
        if(buildstate == 2)
            qdel(W)
            user << "<span class='notice'>You install a trigger group into the frame.</span>"
            buildstate++
            update_icon()
            return
    else if(isWelder(W))
        if(buildstate == 1)
            var/obj/item/weapon/weldingtool/T = W
            if(T.remove_fuel(5,user))
                if(!src || !T.isOn()) return
                playsound(src.loc, 'sound/items/Welder2.ogg', 100, 1)
                user << "<span class='notice'>You cut holes in the pistol frame.</span>"
                buildstate++
                update_icon()
            return
    else if (istype(W,/obj/item/weapon/crafting/parts/grips))
        if(buildstate == 3)
            var/obj/item/weapon/gun/projectile/revolver/improvised/G = new(get_turf(src))
            check_construction(G,user)
            check_weapons(G, user)
            qdel(src)
            qdel(W)
        ..()

/obj/item/weapon/crafting/receiver/pistol
    name = "pistol frame"
    desc = "A frame for an improvised pistol."
    icon_state = "receiver_pistol"
    item_state = "gun"
    w_class = ITEM_SIZE_NORMAL

/obj/item/weapon/crafting/receiver/pistol/examine(mob/user)
    ..(user)
    switch(buildstate)
        if(1) user << "It has a trigger group installed."
        if(2) user << "It has a trigger group and a barrel installed."
        if(3) user << "It has a trigger group, barrel and firing pin installed."
        if(4) user << "It has a trigger group, barrel, firing pin and slide installed."

/obj/item/weapon/crafting/receiver/pistol/attackby(obj/item/weapon/W, mob/user)
    if(istype(W,/obj/item/weapon/crafting/parts/improvised))
        if(buildstate == 0)
            qdel(W)
            user << "<span class='notice'>You install a trigger group into the frame.</span>"
            buildstate++
            update_icon()
            return
        if(buildstate == 1)
            qdel(W)
            user << "<span class='notice'>You mount the barrel onto the frame.</span>"
            buildstate++
            update_icon()
            return
        if(buildstate == 2)
            qdel(W)
            user << "<span class='notice'>You insert the firing pin into the rear of the frame.</span>"
            buildstate++
            update_icon()
        if(buildstate == 3)
            qdel(W)
            user << "<span class='notice'>You slide the rack over the top of the gun.</span>"
            buildstate++
            update_icon()
        if(buildstate == 4)
            qdel(W)
            var/obj/item/weapon/gun/projectile/improvised/G = new(get_turf(src))
            check_construction(G,user)
            check_weapons(G, user)
            qdel(src)
        ..()

/obj/item/weapon/crafting/receiver/smg
    name = "sub machine gun frame"
    desc = "A frame for an improvised sub machine gun."
    icon_state = "receiver_smg"
    item_state = "wt550"
    w_class = ITEM_SIZE_NORMAL

/obj/item/weapon/crafting/receiver/smg/examine(mob/user)
    ..(user)
    switch(buildstate)
        if(1) user << "It has screws in the receiver."
        if(2) user << "It has a screwed-in receiver and a trigger group."
        if(3) user << "It has a screwed-in receiver, trigger group and a stock."
        if(4) user << "It has a screwed-in receiver. trigger group, stock and an uncut upper receiver."
        if(5) user << "It has a screwed-in receiver. trigger group, stock and an upper receiver."
        if(6) user << "It has a screwed-in receiver. trigger group, stock, upper receiver and a barrel."
        if(7) user << "It has a screwed-in receiver. trigger group, stock, upper receiver, barrel and a bolt."
        if(8) user << "It has a screwed-in receiver. trigger group, stock, upper receiver, barrel, bolt and sights."

/obj/item/weapon/crafting/receiver/smg/attackby(obj/item/W, mob/user)
    if(istype(W,/obj/item/weapon/crafting/parts/improvised))
        if(buildstate == 0)
            qdel(W)
            user << "<span class='notice'>You insert hardware into the receiver.</span>"
            buildstate++
            update_icon()
            return
        if(buildstate == 1)
            qdel(W)
            user << "<span class='notice'>You install a trigger group into the receiver.</span>"
            buildstate++
            update_icon()
            return
        if(buildstate == 3)
            qdel(W)
            user << "<span class='notice'>You install an upper receiver into the lower receiver.</span>"
            buildstate++
            update_icon()
        if(buildstate == 5)
            qdel(W)
            user << "<span class='notice'>You install a barrel into the upper receiver.</span>"
            buildstate++
            update_icon()
        if(buildstate == 6)
            qdel(W)
            user << "<span class='notice'>You install a bolt into the upper receiver.</span>"
            buildstate++
            update_icon()
        if(buildstate == 7)
            qdel(W)
            user << "<span class='notice'>You install sights onto the gun.</span>"
            buildstate++
            update_icon()
    else if(isstack(W))
        var/obj/item/stack/rods/R = W
        if(buildstate == 2)
            if(R.use(1))
                user << "<span class='notice'>You install a wire stock into the receiver.</span>"
                buildstate++
                update_icon()
    else if(isWelder(W))
        if(buildstate == 4)
            var/obj/item/weapon/weldingtool/T = W
            if(T.remove_fuel(5,user))
                if(!src || !T.isOn()) return
                playsound(src.loc, 'sound/items/Welder2.ogg', 100, 1)
                user << "<span class='notice'>You cut holes in the upper receiver.</span>"
                buildstate++
                update_icon()
            return
    else if (istype(W,/obj/item/weapon/crafting/parts/grips))
        if(buildstate == 8)
            qdel(W)
            var/obj/item/weapon/gun/projectile/automatic/improvised/G = new(get_turf(src))
            check_construction(G,user)
            check_weapons(G, user)
            qdel(src)
        ..()

/obj/item/weapon/crafting/receiver/smg_2
    name = "wooden sub machine gun frame"
    desc = "A wooden frame for an improvised sub machine gun."
    icon_state = "receiver_smg2"
    item_state = "sawnshotgun"
    w_class = ITEM_SIZE_NORMAL

/obj/item/weapon/crafting/receiver/smg_2/examine(mob/user)
    ..(user)
    switch(buildstate)
        if(1) user << "It has screws in the receiver."
        if(2) user << "It has a screwed-in receiver and a trigger group."
        if(3) user << "It has a screwed-in receiver, trigger group and a magwell."
        if(4) user << "It has a screwed-in receiver, trigger group, magwell and a barrel."
        if(5) user << "It has a screwed-in receiver, trigger group, magwell, barrel and an uncut upper receiver."
        if(6) user << "It has a screwed-in receiver, trigger group, magwell, barrel, and an upper receiver."
        if(7) user << "It has a screwed-in receiver, trigger group, magwell, barrel, upper receiver and sights."

/obj/item/weapon/crafting/receiver/smg_2/attackby(obj/item/W, mob/user)
    if(istype(W,/obj/item/weapon/crafting/parts/improvised))
        if(buildstate == 0)
            qdel(W)
            user << "<span class='notice'>You insert hardware into the receiver.</span>"
            buildstate++
            update_icon()
            return
        if(buildstate == 1)
            qdel(W)
            user << "<span class='notice'>You install a trigger group into the receiver.</span>"
            buildstate++
            update_icon()
            return
        if(buildstate == 2)
            qdel(W)
            user << "<span class='notice'>You install a magwell into the receiver.</span>"
            buildstate++
            update_icon()
        if(buildstate == 3)
            qdel(W)
            user << "<span class='notice'>You install a barrel into the receiver.</span>"
            buildstate++
            update_icon()
        if(buildstate == 4)
            qdel(W)
            user << "<span class='notice'>You install an upper receiver on the lower receiver.</span>"
            buildstate++
            update_icon()
        if(buildstate == 6)
            qdel(W)
            user << "<span class='notice'>You pin sights onto the upper receiver.</span>"
            buildstate++
            update_icon()
        if(buildstate == 7)
            qdel(W)
            user << "<span class='notice'>You install the bolt onto the gun.</span>"
            var/obj/item/weapon/gun/projectile/automatic/improvised/smg_45/G = new(get_turf(src))
            check_construction(G,user)
            check_weapons(G, user)
            qdel(src)
    else if(isWelder(W))
        if(buildstate == 5)
            var/obj/item/weapon/weldingtool/T = W
            if(T.remove_fuel(5,user))
                if(!src || !T.isOn()) return
                playsound(src.loc, 'sound/items/Welder2.ogg', 100, 1)
                user << "<span class='notice'>You cut holes in the upper receiver.</span>"
                buildstate++
                update_icon()
            return
        ..()
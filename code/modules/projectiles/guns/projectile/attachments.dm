// Beginning code for attachments and suppressors, very cool kanye.
/obj/item/weapon/silencer //suppressor is now here.
	name = "suppressor"
	desc = "A sound suppressor. Control Alt Click to remove it off your gun."
	icon = 'icons/obj/gun.dmi'
	icon_state = "silencer"
	w_class = ITEM_SIZE_SMALL

/obj/item/weapon/gun/projectile/
    var/threaded = 0 //Determines whether or not the gun can accept a suppressor.
    var/suppressed_sound = 'sound/weapons/gunshot/mp7_silenced.ogg'

/obj/item/weapon/gun/projectile/CtrlAltClick(mob/user as mob)
	if(user.get_inactive_hand() == src)
		if(silenced && threaded)
			if(user.l_hand != src && user.r_hand != src)
				..()
				return
			to_chat(user, "<span class='notice'>You unscrew [silenced] from [src].</span>")
			user.put_in_hands(silenced)
			silenced = initial(silenced)
			w_class = initial(w_class)
			fire_sound = initial(fire_sound)
			update_icon()
			return
	..()

/obj/item/weapon/gun/projectile/attackby(obj/item/I as obj, mob/user as mob)
    if(threaded)
        if(istype(I, /obj/item/weapon/silencer))
            if(user.l_hand != src && user.r_hand != src)	//if we're not in his hands
                to_chat(user, "<span class='notice'>You'll need [src] in your hands to do that.</span>")
                return
            if(!user.unEquip(I, src))
                return//put the silencer into the gun
            to_chat(user, "<span class='notice'>You screw [I] onto [src].</span>")
            silenced = I	//dodgy?
            fire_sound = suppressed_sound
            update_icon()
            return
    else
        to_chat(user, "<span class = 'notice'>You cannot fit a suppressor onto this gun.")
        return
    ..()
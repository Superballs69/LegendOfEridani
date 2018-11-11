/obj/item/ammo_magazine/s357
	name = "speed loader (.357)"
	desc = "A speed loader for revolvers."
	icon_state = "38"
	caliber = "357"
	ammo_type = /obj/item/ammo_casing/a357
	matter = list(MATERIAL_STEEL = 1260)
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_magazine/s50
	name = "speed loader (.50)"
	desc = "A speed loader for revolvers."
	icon_state = "38"
	caliber = ".50"
	ammo_type = /obj/item/ammo_casing/a50
	matter = list(MATERIAL_STEEL = 1260)
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_magazine/s38
	name = "speed loader (.38)"
	desc = "A speed loader for revolvers."
	icon_state = "38"
	caliber = "38"
	matter = list(MATERIAL_STEEL = 360)
	ammo_type = /obj/item/ammo_casing/a38
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_magazine/s38/rubber
	name = "speed loader (.38, rubber)"
	icon_state = "R38"
	ammo_type = /obj/item/ammo_casing/a38/rubber

/obj/item/ammo_magazine/s44
	name = "speed loader (.44 magnum)"
	desc = "A speed loader for revolvers."
	icon_state = "38"
	ammo_type = /obj/item/ammo_casing/a44
	matter = list(MATERIAL_STEEL = 450)
	caliber = ".44"
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_magazine/s44/rubber
	name = "speed loader (.44 magnum, rubber)"
	icon_state = "R38"
	ammo_type = /obj/item/ammo_casing/a44/rubber

/obj/item/ammo_magazine/m45m
	name = "magazine (.45)"
	icon_state = "45"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/a45
	matter = list(MATERIAL_STEEL = 525) //metal costs are very roughly based around 1 .45 casing = 75 metal
	caliber = ".45"
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/m45m/empty
	initial_ammo = 0

/obj/item/ammo_magazine/m45m/rubber
	name = "magazine (.45, rubber)"
	ammo_type = /obj/item/ammo_casing/a45/rubber

/obj/item/ammo_magazine/m45m/practice
	name = "magazine (.45, practice)"
	ammo_type = /obj/item/ammo_casing/a45/practice

/obj/item/ammo_magazine/m45m/flash
	name = "magazine (.45, flash)"
	ammo_type = /obj/item/ammo_casing/a45/flash

/obj/item/ammo_magazine/m45mext
	name = "magazine (.45)"
	icon_state = "45ext"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/a45
	matter = list(DEFAULT_WALL_MATERIAL = 1050) //metal costs are very roughly based around 1 .45 casing = 75 metal
	caliber = ".45"
	max_ammo = 14
	multiple_sprites = 1

/obj/item/ammo_magazine/m45mext/empty
	initial_ammo = 0

/obj/item/ammo_magazine/m45mext/rubber
	name = "magazine (.45, rubber)"
	ammo_type = /obj/item/ammo_casing/a45/rubber

/obj/item/ammo_magazine/m45mext/practice
	name = "magazine (.45, practice)"
	ammo_type = /obj/item/ammo_casing/a45/practice

/obj/item/ammo_magazine/m45mext/flash
	name = "magazine (.45, flash)"
	ammo_type = /obj/item/ammo_casing/a45/flash

/obj/item/ammo_magazine/m45mds
	name = "double-stack magazine (.45)"
	icon_state = "45ds"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/a45
	matter = list(MATERIAL_STEEL = 900)
	caliber = ".45"
	max_ammo = 12
	multiple_sprites = 1

/obj/item/ammo_magazine/m45mds/empty
	initial_ammo = 0

/obj/item/ammo_magazine/m45mds/rubber
	name = "double-stack magazine (.45, rubber)"
	ammo_type = /obj/item/ammo_casing/a45/rubber

/obj/item/ammo_magazine/m45mds/practice
	name = "double-stack magazine (.45, practice)"
	ammo_type = /obj/item/ammo_casing/a45/practice

/obj/item/ammo_magazine/m45mds/flash
	name = "double-stack magazine (.45, flash)"
	ammo_type = /obj/item/ammo_casing/a45/flash

/obj/item/ammo_magazine/m45uzi
	name = "stick magazine (.45)"
	icon_state = "uzi45"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/a45
	matter = list(MATERIAL_STEEL = 1200)
	caliber = ".45"
	max_ammo = 16
	multiple_sprites = 1

/obj/item/ammo_magazine/m45uzi/empty
	initial_ammo = 0

/obj/item/ammo_magazine/mc9mm
	name = "magazine (9mm)"
	icon_state = "9x19p"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	matter = list(MATERIAL_STEEL = 480)
	caliber = "9mm"
	ammo_type = /obj/item/ammo_casing/a9mm
	max_ammo = 8
	multiple_sprites = 1

/obj/item/ammo_magazine/mc9mm/empty
	initial_ammo = 0

/obj/item/ammo_magazine/mc9mm/flash
	name = "magazine (9mm, flash)"
	ammo_type = /obj/item/ammo_casing/a9mm/flash

/obj/item/ammo_magazine/mc9mmds
	name = "double-stack magazine (9mm)"
	icon_state = "9mmds"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/a9mm
	matter = list(MATERIAL_STEEL = 900)
	caliber = "9mm"
	max_ammo = 15
	multiple_sprites = 1

/obj/item/ammo_magazine/mc9mmds/empty
	initial_ammo = 0

/obj/item/ammo_magazine/mc9mmds/rubber
	name = "double-stack magazine (9mm, rubber)"
	ammo_type = /obj/item/ammo_casing/a9mm/rubber

/obj/item/ammo_magazine/mc9mmds/practice
	name = "double-stack magazine (9mm, practice)"
	ammo_type = /obj/item/ammo_casing/a9mm/practice

/obj/item/ammo_magazine/mc9mmds/flash
	name = "double-stack magazine (9mm, flash)"
	ammo_type = /obj/item/ammo_casing/a9mm/flash

/obj/item/ammo_magazine/m9mmsmg
	name = "\improper SMG magazine (9mm)"
	icon_state = "smg"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	matter = list(DEFAULT_WALL_MATERIAL = 1800)
	caliber = "9mm"
	ammo_type = /obj/item/ammo_casing/a9mm
	max_ammo = 30
	multiple_sprites = 1

/obj/item/ammo_magazine/m9mmsmg/empty
	initial_ammo = 0

/obj/item/ammo_magazine/m9mmsmg/rubber
	name = "\improper SMG magazine (9mm, rubber)"
	ammo_type = /obj/item/ammo_casing/a9mm/rubber

/obj/item/ammo_magazine/m9mmsmg/practice
	name = "\improper SMG magazine (9mm, practice)"
	ammo_type = /obj/item/ammo_casing/a9mm/practice

/obj/item/ammo_magazine/m9mmsmg/flash
	name = "\improper SMG magazine (9mm, flash)"
	ammo_type = /obj/item/ammo_casing/a9mm/flash

/obj/item/ammo_magazine/box/b9mm
	name = "ammunition box (9mm)"
	icon_state = "9mm"
	origin_tech = list(TECH_COMBAT = 2)
	matter = list(MATERIAL_STEEL = 1800)
	caliber = "9mm"
	ammo_type = /obj/item/ammo_casing/a9mm
	max_ammo = 30

/obj/item/ammo_magazine/box/b9mm/empty
	initial_ammo = 0

/obj/item/ammo_magazine/box/emp
	name = "ammunition box (.38, haywire)"
	icon_state = "empbox"
	origin_tech = list(TECH_COMBAT = 2)
	max_ammo = 10
	ammo_type = /obj/item/ammo_casing/a38/emp
	caliber = ".38"

/obj/item/ammo_magazine/box/emp/b45
	name = "ammunition box (.45, haywire)"
	ammo_type = /obj/item/ammo_casing/a45/emp
	caliber = ".45"

/obj/item/ammo_magazine/box/emp/b10mm
	name = "ammunition box (10mm, haywire)"
	ammo_type = /obj/item/ammo_casing/a10mm/emp
	caliber = "10mm"

/obj/item/ammo_magazine/mc9mmt
	name = "top mounted magazine (9mm)"
	icon_state = "9mmt"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/a9mm
	matter = list(MATERIAL_STEEL = 1200)
	caliber = "9mm"
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/mc9mmt/empty
	initial_ammo = 0

/obj/item/ammo_magazine/mc9mmt/rubber
	name = "top mounted magazine (9mm, rubber)"
	ammo_type = /obj/item/ammo_casing/a9mm/rubber

/obj/item/ammo_magazine/mc9mmt/practice
	name = "top mounted magazine (9mm, practice)"
	ammo_type = /obj/item/ammo_casing/a9mm/practice

/obj/item/ammo_magazine/mc9mmt/flash
	name = "top mounted magazine (9mm, flash)"
	ammo_type = /obj/item/ammo_casing/a9mm/flash

/obj/item/ammo_magazine/box/b45
	name = "ammunition box (.45)"
	icon_state = "9mm"
	origin_tech = list(TECH_COMBAT = 2)
	caliber = ".45"
	matter = list(MATERIAL_STEEL = 2250)
	ammo_type = /obj/item/ammo_casing/a45
	max_ammo = 30

/obj/item/ammo_magazine/box/b45/empty
	initial_ammo = 0

/obj/item/ammo_magazine/m10mm
	name = "magazine (10mm)"
	icon_state = "10mm"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = "10mm"
	matter = list(MATERIAL_STEEL = 1500)
	ammo_type = /obj/item/ammo_casing/a10mm
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/m10mm/empty
	initial_ammo = 0

/obj/item/ammo_magazine/m762
	name = "magazine (7.62mm)"
	icon_state = "5.56"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = "a762"
	matter = list(MATERIAL_STEEL = 1800)
	ammo_type = /obj/item/ammo_casing/a762
	max_ammo = 15 //if we lived in a world where normal mags had 30 rounds, this would be a 20 round mag
	multiple_sprites = 1

/obj/item/ammo_magazine/m762/empty
	initial_ammo = 0

/obj/item/ammo_magazine/m762/practice
	name = "magazine (7.62mm, practice)"
	ammo_type = /obj/item/ammo_casing/a762/practice

/obj/item/ammo_magazine/m762/practice
	name = "magazine (7.62mm, practice)"
	ammo_type = /obj/item/ammo_casing/a762/practice

/obj/item/ammo_magazine/m762ext
	name = "extended magazine (7.62mm)"
	icon_state = "7.62mm"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = "7.62mm"
	matter = list(DEFAULT_WALL_MATERIAL = 2200)
	ammo_type = /obj/item/ammo_casing/a762
	max_ammo = 30
	multiple_sprites = 0

/obj/item/ammo_magazine/m762ext/empty
	initial_ammo

/obj/item/ammo_magazine/m762svd
	name = "\improper SVD magazine (7.62mm)"
	icon_state = "svd-762"
	mag_type = MAGAZINE
	caliber = "7.62mm"
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	ammo_type = /obj/item/ammo_casing/a762
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/m762svd/empty
	initial_ammo = 0

/obj/item/ammo_magazine/m50
	name = "magazine (.50)"
	icon_state = "50ae"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = ".50"
	matter = list(MATERIAL_STEEL = 1260)
	ammo_type = /obj/item/ammo_casing/a50
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/m50/empty
	initial_ammo = 0

/obj/item/ammo_magazine/m75
	name = "ammo magazine (20mm)"
	icon_state = "75"
	mag_type = MAGAZINE
	caliber = "75"
	ammo_type = /obj/item/ammo_casing/a75
	multiple_sprites = 1
	max_ammo = 4

/obj/item/ammo_magazine/m75/empty
	initial_ammo = 0

/obj/item/ammo_magazine/box/b556
	name = "magazine box (5.56mm)"
	icon_state = "a762"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = "a556"
	matter = list(MATERIAL_STEEL = 4500)
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 50
	multiple_sprites = 1

/obj/item/ammo_magazine/box/b556/empty
	initial_ammo = 0

/obj/item/ammo_magazine/m556
	name = "magazine (5.56mm)"
	icon_state = "c762"
	mag_type = MAGAZINE
	caliber = "a556"
	matter = list(MATERIAL_STEEL = 1800)
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/caps
	name = "speed loader (caps)"
	desc = "A cheap plastic speed loader for some kind of revolver."
	icon_state = "T38"
	caliber = "caps"
	color = "#ff0000"
	ammo_type = /obj/item/ammo_casing/cap
	matter = list(MATERIAL_STEEL = 600)
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/m12ga
	name = "magazine (12 gauge)"
	icon_state = "m12ga"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = "shotgun"
	matter = list(DEFAULT_WALL_MATERIAL = 1800)
	ammo_type = /obj/item/ammo_casing/shotgun/pellet
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/m12ga/empty
	initial_ammo = 0

/obj/item/ammo_magazine/m57smg
	name = "top mounted magazine (5.7x28mm)"
	icon_state = "p90"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/a57
	matter = list(DEFAULT_WALL_MATERIAL = 3000)
	caliber = "5.7x28mm"
	max_ammo = 50
	multiple_sprites = 1

/obj/item/ammo_magazine/m57smg/ap
	name = "top mounted magazine (5.7x28mm armour piercing)"
	ammo_type = /obj/item/ammo_casing/a57/ap

/obj/item/ammo_magazine/m57smg/hp
	name = "top mounted magazine (5.7x28mm hollow point)"
	ammo_type = /obj/item/ammo_casing/a57/hp

/obj/item/ammo_magazine/m57smg/empty
	initial_ammo = 0

/obj/item/ammo_magazine/m57
	name = "pistol magazine (5.7x28mm)"
	icon_state = "57"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/a57
	matter = list(DEFAULT_WALL_MATERIAL = 525) //metal costs are very roughly based around 1 .45 casing = 75 metal
	caliber = "5.7x28mm"
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/m57/empty
	initial_ammo = 0

/obj/item/ammo_magazine/m57/ap
	name = "pistol magazine (5.7x28mm armour piercing)"
	ammo_type = /obj/item/ammo_casing/a57/ap

/obj/item/ammo_magazine/m57/hp
	name = "pistol magazine (5.7x28mm hollow point)"
	ammo_type = /obj/item/ammo_casing/a57/hp

/obj/item/ammo_magazine/m57/rubber
	name = "pistol magazine (5.7x28m rubber)"
	ammo_type = /obj/item/ammo_casing/a57/rubber
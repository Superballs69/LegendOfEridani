/obj/item/organ/internal/augment/armor
	name = "subdermal armor"
	allowed_organs = list(BP_AUGMENT_CHEST_ARMOUR)
	icon_state = "armor-chest"
	desc = "A flexible composite mesh designed to prevent tearing and puncturing of underlying tissue."
	var/brute_mult = 0.8
	var/burn_mult = 1

/obj/item/organ/internal/augment/emp_armor
	name = "subdermal emp protection"
	allowed_organs = list(BP_AUGMENT_CHEST_ARMOUR)
	augment_flags = AUGMENTATION_MECHANIC
	icon_state = "emp-armor-chest"
	desc = "A flexible faraday cage to protect internal components from Electromagnetic damages."
	var/cell_emp_mult = 0.7

/obj/item/organ/internal/augment/emp_armor/advanced
	name = "PyroCorp integrated EMP Armor"
	allowed_organs = list(BP_AUGMENT_CHEST_ARMOUR)
	augment_flags = AUGMENTATION_MECHANIC
	icon_state = "emp-armor-chest-advanced"
	desc = "A flexible faraday cage to protect internal components from Electromagnetic damages, along with other forms of damage. Designed by the PyroCorp."
	cell_emp_mult = 0.2
	var/brute_mult = 0.7
	var/burn_mult = 0.7
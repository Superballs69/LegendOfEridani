/obj/item/documents
	name = "secret documents"
	desc = "\"Top Secret\" documents."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "docs_generic"
	item_state = "paper"
	throwforce = 0
	w_class = ITEM_SIZE_TINY
	throw_range = 1
	var/description_antag

/obj/item/documents/examine(var/mob/user)
	. = ..()
	if(. && description_antag)
		to_chat(user, description_antag)

/obj/item/documents/fdi
	name = "secret federal government documents"
	desc = "\"Top Secret\" documents detailing recent sector reports, security readiness and high-value wanted suspect reports."
	description_antag = "Looks like the FCA has been looking for a deeply-nested Frontier Federation mole, along with contingency plans if the ETF were ever to declare independence."
	icon_state = "docs_verified"

/obj/item/documents/fca
	name = "secret FCA documents"
	desc = "\"Top Secret\" documents filled with various forms and procedures about standard operation procedures, and various possible threats in the sector."
	description_antag = "It appears the FCA has engaged their contingency plans for the ETF's independence, and there's no backing up from it."
	icon_state = "docs_verified"

/obj/item/documents/nanotrasen
	name = "secret corporate documents"
	desc = "\"Top Secret\" corporate documents, filled with complex diagrams, research procedures, and details on cloning or breeding rights to non-sapient species the Torch encounters. It seems like they will be auctioning them off to the highest private bidder."
	description_antag = "A conglomerate of powerful corporations seems to be wanting to create weaponized xenobiological species. Probably as a form of WMD, by your best guess."
	icon_state = "docs_verified"

/obj/item/documents/scg/verified
	name = "secret government documents"
	desc = "\"Top Secret\" documents detailing SCG IFF codes, granting the Torch access into restricted sectors. The majority of them are coordinates, codes for fellow ships, and clearance lists."
	description_antag = "These codes seem very odd for an exploration vessel: a lot of them are SCG blacksites, covered up. You've never even heard of most of these."
	icon_state = "docs_verified"

/obj/item/documents/scg/red
	name = "red secret documents"
	desc = "\"Top Secret\" protocols on what to do if the ship passes into TCC sectors. The writing mostly goes over the diplomatic process, while constantly shaming the Terrans for their idiocy and needless aggression."
	description_antag = "You notice that these protocols contain small, almost intentional snubbing efforts. Whoever wrote these may have been rooting for a war to start..."
	icon_state = "docs_red"

/obj/item/documents/scg/blue
	name = "blue secret documents"
	desc = "\"Top Secret\" documents detailing the Skrellian company Krri'gli, and their insistent requests upon specific priority sectors for the Torch to investigate."
	description_antag = "Krri'gli seem to be guiding the Torch, subtly, to a specific unmapped sector of the galaxy. It's almost like they're too afraid to investigate it personally."
	icon_state = "docs_blue"

/obj/item/documents/scgr
	name = "private memos and faxes"
	desc = "\"Top Secret\" memos and faxes between the SCGR and other officials of the SCG. It's like a chat client ran on pure paperwork."
	description_antag = "The SCGR's conversations contain a massive amount of dirt on politicians: drugs, sex, money..."
#if !defined(using_map_DATUM)

	#include "eclipse_announcements.dm"
	#include "eclipse_antagonism.dm"
	#include "eclipse_areas.dm"
	#include "eclipse_elevator.dm"
	#include "eclipse_holodecks.dm"
	#include "eclipse_lobby.dm"
//	#include "eclipse_npcs.dm"
	#include "eclipse_overmap.dm"
	#include "eclipse_presets.dm"
	#include "eclipse_procs.dm"
//	#include "eclipse_ranks.dm"
	#include "eclipse_security_state.dm"
	#include "eclipse_shuttles.dm"
	#include "eclipse_unit_testing.dm"

//	#include "datums/uniforms.dm"
//	#include "datums/uniforms_expedition.dm"
//	#include "datums/uniforms_fleet.dm"
	#include "datums/reports.dm"
	#include "datums/shackle_law_sets.dm"
	#include "datums/supplypacks/security.dm"
	#include "datums/supplypacks/science.dm"

	#include "items/cards_ids.dm"
	#include "items/encryption_keys.dm"
	#include "items/headsets.dm"
	#include "items/items.dm"
	#include "items/machinery.dm"
	#include "items/manuals.dm"
	#include "items/stamps.dm"
//	#include "items/uniform_vendor.dm"
	#include "items/rigs.dm"
	#include "items/solbanner.dm"

//	#include "items/clothing/solgov-accessory.dm"
//	#include "items/clothing/solgov-armor.dm"
//	#include "items/clothing/solgov-feet.dm"
//	#include "items/clothing/solgov-head.dm"
//	#include "items/clothing/solgov-suit.dm"
//	#include "items/clothing/solgov-under.dm"

	#include "job/eclipse_access.dm"
	#include "job/eclipse_outfits.dm"
	#include "job/eclipse_jobs.dm"
	#include "job/command_jobs.dm"
	#include "job/engineering_jobs.dm"
	#include "job/exploration_jobs.dm"
	#include "job/medical_jobs.dm"
	#include "job/misc_jobs.dm"
	#include "job/research_jobs.dm"
	#include "job/security_jobs.dm"
	#include "job/service_jobs.dm"
	#include "job/supply_jobs.dm"

	#include "machinery/keycard authentication.dm"

	#include "structures/closets.dm"
	#include "structures/signs.dm"
	#include "structures/closets/command.dm"
	#include "structures/closets/engineering.dm"
	#include "structures/closets/medical.dm"
	#include "structures/closets/misc.dm"
	#include "structures/closets/research.dm"
	#include "structures/closets/security.dm"
	#include "structures/closets/services.dm"
	#include "structures/closets/supply.dm"
	#include "structures/closets/exploration.dm"

	#include "loadout/_defines.dm"
	#include "loadout/loadout_accessories.dm"
	#include "loadout/loadout_eyes.dm"
	#include "loadout/loadout_gloves.dm"
	#include "loadout/loadout_head.dm"
	#include "loadout/loadout_shoes.dm"
	#include "loadout/loadout_uniform.dm"
	#include "loadout/loadout_xeno.dm"
	#include "loadout/~defines.dm"

	#include "eclipse-0.dmm"
	#include "eclipse-1.dmm"
	#include "eclipse-2.dmm"
	#include "eclipse-3.dmm"
	#include "eclipse-4.dmm"
	#include "eclipse-5.dmm"
	#include "eclipse-6.dmm"
	#include "eclipse-7.dmm"
	#include "../away/empty.dmm"
	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/bearcat/bearcat.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/casino/casino.dm"
	#include "../away/yacht/yacht.dm"
	#include "../away/blueriver/blueriver.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/icarus/icarus.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lar_maria/lar_maria.dm"
	#include "../away/unishi/unishi.dm"

	#define using_map_DATUM /datum/map/eclipse

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Eclipse

#endif


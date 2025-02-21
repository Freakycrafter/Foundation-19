#if !defined(using_map_DATUM)

	#include "site53_announcements.dm"
	#include "site53areas.dm"
//	#include "../torch/torch_areas.dm"
//	#include "torch_elevator.dm"
	#include "site53elevators.dm"
//	#include "torch_holodecks.dm"
//	#include "torch_overmap.dm"
	#include "site53_presets.dm"
//	#include "torch_ranks.dm"
	#include "site_53_ranks.dm"
	#include "site53shuttles.dm"
//	#include "torch_unit_testing.dm"
//	#include "torch_antagonism.dm"
//	#include "torch_npcs.dm"
	#include "site53_securitystate.dm"

	#include "items/cards_ids.dm"
	#include "items/encryption_keys.dm"
	#include "items/headsets.dm"
	#include "items/items.dm"
	#include "items/manuals.dm"
	#include "items/stamps.dm"
	#include "items/rigs.dm"
	#include "items/clothing/solgov-accessory.dm"
	#include "items/clothing/solgov-armor.dm"
	#include "items/clothing/solgov-feet.dm"
	#include "items/clothing/solgov-head.dm"
	#include "items/clothing/solgov-suit.dm"
	#include "items/clothing/solgov-under.dm"

	#include "job/access.dm"
	#include "job/headsets.dm"
	#include "job/jobs.dm"
	#include "job/outfits.dm"
	#include "job/papers.dm"
	#include "job/jobs/command.dm"
	#include "job/jobs/engineering.dm"
	#include "job/jobs/medical.dm"
	#include "job/jobs/misc.dm"
	#include "job/jobs/research.dm"
	#include "job/jobs/security.dm"
	#include "structures/signs.dm"
	#include "structures/closets/command.dm"
	#include "structures/closets/medical.dm"
	#include "structures/closets/misc.dm"
	#include "structures/closets/research.dm"
	#include "structures/closets/security.dm"
	#include "structures/closets/services.dm"
	#include "structures/closets/supply.dm"

	#include "site53-1.dmm"
	#include "site53-2.dmm"
	#include "site53-3.dmm"
	#include "site53-4.dmm"
	#include "site53-5.dmm"
	#include "z1_admin.dmm"
	#include "z2_transit.dmm"
	#include "away_mission-1.dmm"

	#define using_map_DATUM /datum/map/site53

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Site 53

#endif

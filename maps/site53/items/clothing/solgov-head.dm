/obj/item/clothing/head/beret/scp
	icon = 'icons/obj/clothing/hats.dmi'

/obj/item/clothing/head/solgov
	name = "master solgov hat"
	icon = 'maps/torch/icons/obj/solgov-head.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/solgov-head.dmi')
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9

//Utility
/obj/item/clothing/head/soft/solgov
	name = "\improper Sol Central Government cap"
	desc = "It's a ballcap in SCG colors."
	icon_state = "solsoft"
	icon = 'maps/torch/icons/obj/solgov-head.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/solgov-head.dmi')

/obj/item/clothing/head/soft/solgov/veteranhat
	name = "veteran hat"
	desc = "It's a tacky black ballcap bearing the yellow service ribbon of the Gaia Conflict."
	icon_state = "cap_veteran"

/obj/item/clothing/head/soft/solgov/expedition
	name = "\improper Expeditionary Corps cap"
	desc = "It's a black ballcap bearing the Expeditonary Corps crest."
	icon_state = "expeditionsoft"

/obj/item/clothing/head/soft/solgov/expedition/co
	name = "\improper Expeditionary Corps command cap"
	desc = "It's a black ballcap bearing the Expeditonary Corps crest. The brim has gold trim."
	icon_state = "expeditioncomsoft"

/obj/item/clothing/head/soft/solgov/fleet
	name = "fleet cap"
	desc = "It's a navy blue ballcap with the SCG Fleet crest."
	icon_state = "fleetsoft"

/obj/item/clothing/head/solgov/utility
	name = "utility cover"
	desc = "An eight-point utility cover."
	icon_state = "greyutility"
	item_state_slots = list(
		slot_l_hand_str = "helmet",
		slot_r_hand_str = "helmet",
		)
	body_parts_covered = 0

/obj/item/clothing/head/solgov/utility/fleet
	name = "fleet utility cover"
	desc = "A navy blue utility cover bearing the crest of the SCG Fleet."
	icon_state = "navyutility"

/obj/item/clothing/head/solgov/utility/marine
	name = "marine utility cover"
	desc = "A green utility cover bearing the crest of the SCG Marine Corps."
	icon_state = "greenutility"

/obj/item/clothing/head/solgov/utility/marine/tan
	name = "tan utility cover"
	desc = "A tan utility cover bearing the crest of the SCG Marine Corps."
	icon_state = "tanutility"

/obj/item/clothing/head/solgov/utility/marine/urban
	name = "urban utility cover"
	desc = "A grey utility cover bearing the crest of the SCG Marine Corps."
	icon_state = "greyutility"

//Service

/obj/item/clothing/head/solgov/service
	name = "service cover"
	desc = "A service uniform cover."
	icon_state = "greenwheelcap"
	item_state_slots = list(
		slot_l_hand_str = "helmet",
		slot_r_hand_str = "helmet")
	body_parts_covered = 0

/obj/item/clothing/head/solgov/service/expedition
	name = "expedition peaked cap"
	desc = "A peaked grey uniform cap belonging to the SCG Expeditionary Corps."
	icon_state = "greydresscap"

/obj/item/clothing/head/solgov/service/expedition/command
	name = "expedition officer's peaked cap"
	desc = "A peaked grey uniform cap belonging to the SCG Expeditionary Corps. This one is trimmed in gold."
	icon_state = "greydresscap_com"

/obj/item/clothing/head/solgov/service/marine
	name = "marine wheel cover"
	desc = "A green service uniform cover with an SCG Marine Corps crest."
	icon_state = "greenwheelcap"

/obj/item/clothing/head/solgov/service/marine/command
	name = "marine officer's wheel cover"
	desc = "A green service uniform cover with an SCG Marine Corps crest and gold stripe."
	icon_state = "greenwheelcap_com"

/obj/item/clothing/head/solgov/service/marine/garrison
	name = "marine garrison cap"
	desc = "A green garrison cap belonging to the SCG Marine Corps."
	icon_state = "greengarrisoncap"

/obj/item/clothing/head/solgov/service/marine/garrison/command
	name = "marine officer's garrison cap"
	desc = "A green garrison cap belonging to the SCG Marine Corps. This one has a gold pin."
	icon_state = "greengarrisoncap_com"

/obj/item/clothing/head/solgov/service/marine/campaign
	name = "campaign cover"
	desc = "A green campaign cover with an SCG Marine Corps crest. Only found on the heads of Drill Instructors."
	icon_state = "greendrill"

//Dress

/obj/item/clothing/head/solgov/dress
	name = "dress cover"
	desc = "A dress uniform cover."
	icon_state = "greenwheelcap"
	item_state_slots = list(
		slot_l_hand_str = "helmet",
		slot_r_hand_str = "helmet")
	body_parts_covered = 0

/obj/item/clothing/head/solgov/dress/fleet
	name = "fleet dress wheel cover"
	desc = "A white dress uniform cover. This one has an SCG Fleet crest."
	icon_state = "whitepeakcap"

/obj/item/clothing/head/solgov/dress/fleet/command
	name = "fleet officer's dress wheel cover"
	desc = "A white dress uniform cover. This one has a gold stripe and an SCG Fleet crest."
	icon_state = "whitepeakcap_com"

/obj/item/clothing/head/solgov/dress/marine
	name = "marine dress wheel cover"
	desc = "A white dress uniform cover with an SCG Marine Corps crest."
	icon_state = "whitewheelcap"

/obj/item/clothing/head/solgov/dress/marine/command
	name = "marine officer's dress wheel cover"
	desc = "A white dress uniform cover with an SCG Marine Corps crest and gold stripe."
	icon_state = "whitewheelcap_com"

//Berets

/obj/item/clothing/head/beret/solgov
	name = "peacekeeper beret"
	desc = "A beret in Sol Central Government colors. For peacekeepers that are more inclined towards style than safety."
	icon_state = "beret_lightblue"
	icon = 'maps/torch/icons/obj/solgov-head.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/solgov-head.dmi')

/obj/item/clothing/head/beret/solgov/homeguard
	name = "home guard beret"
	desc = "A red beret denoting service in the Sol Home Guard. For personnel that are more inclined towards style than safety."
	icon_state = "beret_red"

/obj/item/clothing/head/beret/solgov/gateway
	name = "gateway administration beret"
	desc = "An orange beret denoting service in the Gateway Administration. For personnel that are more inclined towards style than safety."
	icon_state = "beret_orange"

/obj/item/clothing/head/beret/solgov/customs
	name = "customs and trade beret"
	desc = "A purple beret denoting service in the Customs and Trade Bureau. For personnel that are more inclined towards style than safety."
	icon_state = "beret_purpleyellow"

/obj/item/clothing/head/beret/solgov/orbital
	name = "orbital assault beret"
	desc = "A blue beret denoting orbital assault training. For helljumpers that are more inclined towards style than safety."
	icon_state = "beret_blue"

/obj/item/clothing/head/beret/solgov/research
	name = "government research beret"
	desc = "A green beret denoting service in the Bureau of Research. For explorers that are more inclined towards style than safety."
	icon_state = "beret_green"

/obj/item/clothing/head/beret/solgov/health
	name = "health service beret"
	desc = "A white beret denoting service in the Interstellar Health Service. For medics that are more inclined towards style than safety."
	icon_state = "beret_white"

/obj/item/clothing/head/beret/solgov/marcom
	name = "\improper MARSCOM beret"
	desc = "A red beret with a gold insignia, denoting service in the SCGDF Mars Central Command. For brass who are more inclined towards style than safety."
	icon_state = "beret_redgold"

/obj/item/clothing/head/beret/solgov/stratcom
	name = "\improper STRATCOM beret"
	desc = "A grey beret with a silver insignia, denoting service in the SCGDF Strategic Command. For intelligence personnel who are more inclined towards style than safety."
	icon_state = "beret_graysilver"

/obj/item/clothing/head/beret/solgov/diplomatic
	name = "diplomatic security beret"
	desc = "A tan beret denoting service in the SCG Marine Corps Diplomatic Security Group. For security personnel who are more inclined towards style than safety."
	icon_state = "beret_tan"

/obj/item/clothing/head/beret/solgov/borderguard
	name = "border security beret"
	desc = "A green beret with a silver emblem, denoting service in the Bureau of Border Security. For border guards who are more inclined towards style than safety."
	icon_state = "beret_greensilver"

/obj/item/clothing/head/beret/solgov/expedition
	name = "expeditionary beret"
	desc = "A black beret belonging to the SCG Expeditionary Corps. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black"

/obj/item/clothing/head/beret/solgov/expedition/security
	name = "expeditionary security beret"
	desc = "An SCG Expeditionary Corps beret with a security crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_security"

/obj/item/clothing/head/beret/solgov/expedition/medical
	name = "expeditionary medical beret"
	desc = "An SCG Expeditionary Corps beret with a medical crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_medical"

/obj/item/clothing/head/beret/solgov/expedition/engineering
	name = "expeditionary engineering beret"
	desc = "An SCG Expeditionary Corps beret with an engineering crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_engineering"

/obj/item/clothing/head/beret/solgov/expedition/supply
	name = "expeditionary supply beret"
	desc = "An SCG Expeditionary Corps beret with a supply crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_supply"

/obj/item/clothing/head/beret/solgov/expedition/service
	name = "expeditionary service beret"
	desc = "An SCG Expeditionary Corps beret with a service crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_service"

/obj/item/clothing/head/beret/solgov/expedition/exploration
	name = "expeditionary exploration beret"
	desc = "An SCG Expeditionary Corps beret with an exploration crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_exploration"

/obj/item/clothing/head/beret/solgov/expedition/command
	name = "expeditionary officer's beret"
	desc = "An SCG Expeditionary Corps beret with a golden crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_black_command"

/obj/item/clothing/head/beret/solgov/fleet
	name = "fleet beret"
	desc = "A navy blue beret belonging to the SCG Fleet. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy"

/obj/item/clothing/head/beret/solgov/fleet/security
	name = "fleet security beret"
	desc = "An SCG Fleet beret with a security crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_security"

/obj/item/clothing/head/beret/solgov/fleet/medical
	name = "fleet medical beret"
	desc = "An SCG Fleet beret with a medical crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_medical"

/obj/item/clothing/head/beret/solgov/fleet/engineering
	name = "fleet engineering beret"
	desc = "An SCG Fleet with an engineering crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_engineering"

/obj/item/clothing/head/beret/solgov/fleet/supply
	name = "fleet supply beret"
	desc = "An SCG Fleet beret with a supply crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_supply"

/obj/item/clothing/head/beret/solgov/fleet/service
	name = "fleet service beret"
	desc = "An SCG Fleet beret with a service crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_service"

/obj/item/clothing/head/beret/solgov/fleet/exploration
	name = "fleet exploration beret"
	desc = "An SCG Fleet beret with an exploration crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_exploration"

/obj/item/clothing/head/beret/solgov/fleet/command
	name = "fleet officer's beret"
	desc = "An SCG Fleet beret with a golden crest. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy_command"

//ushanka

/obj/item/clothing/head/ushanka/solgov
	name = "expeditionary fur hat"
	desc = "An SCG Expeditionary Corps synthfur-lined hat for operating in cold environments."
	icon = 'maps/torch/icons/obj/solgov-head.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/solgov-head.dmi')
	icon_state = "ecushankadown"
	icon_state_up = "ecushankaup"

/obj/item/clothing/head/ushanka/solgov/fleet
	name = "fleet fur hat"
	desc = "An SCG Fleet synthfur-lined hat for operating in cold environments."
	icon_state = "flushankadown"
	icon_state_up = "flushankaup"

/obj/item/clothing/head/ushanka/solgov/marine
	name = "marine fur hat"
	desc = "An SCG Marine Corps synthfur-lined hat for operating in cold environments."
	icon_state = "bmcushankadown"
	icon_state_up = "bmcushankaup"

/obj/item/clothing/head/ushanka/solgov/marine/green
	name = "green marine fur hat"
	desc = "An SCG Marine Corps synthfur-lined hat for operating in cold environments."
	icon_state = "mcushankadown"
	icon_state_up = "mcushankaup"

//helmets and other such trash

/obj/item/clothing/head/helmet/solgov
	accessories = list(/obj/item/clothing/accessory/armor/helmcover/blue/sol)

//FOUNDATION
/obj/item/clothing/head/helmet/site53/guard
	name = "guard's helmet"
	desc = "A helmet with 'GUARD' printed on the back in red lettering."
	icon_state = "helmet_pcrc"
	icon = 'maps/torch/icons/obj/solgov-head.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/solgov-head.dmi')
	accessories = null

/obj/item/clothing/head/helmet/site53/guardcomm
	name = "guard commander's helmet"
	desc = "A helmet with 'GUARD COMMANDER' printed on the back in gold lettering."
	icon_state = "helmet_command"
	icon = 'maps/torch/icons/obj/solgov-head.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/solgov-head.dmi')
	accessories = null

/obj/item/clothing/head/solgov/service/site53
	name = "service cap"
	desc = "A grey garrison cap, with the SCP Foundation logo in the interior. A purple insignia is on it's crest."
	icon_state = "service_co_cap"
	item_state = "service_co_cap_om"

//MTF
/obj/item/clothing/head/helmet/site53/zonecomm
	name = "zone commander's helmet"
	desc = "A helmet with 'ZONE COMMANDER' printed on the back in silver lettering."
	icon_state = "helmet_security"
	icon = 'maps/torch/icons/obj/solgov-head.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/solgov-head.dmi')
	accessories = null

/obj/item/clothing/head/helmet/site53/guard/mtf_epsilon
	name = "MTF Epsilon-6 helmet"
	desc = "A helmet with 'MTF Epsilon-6' printed on the back in red lettering."
	icon_state = "helmet_command"
	icon = 'maps/torch/icons/obj/solgov-head.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/solgov-head.dmi')
//	accessories = list(/obj/item/clothing/accessory/armor/helmcover/green)

/obj/item/clothing/head/helmet/site53/guard/mtf_epsilon/leader
//	accessories = list(/obj/item/clothing/accessory/armor/helmcover/saare)

/obj/item/clothing/head/helmet/site53/guard/mtf_epsilon/medic
//	accessories = list(/obj/item/clothing/accessory/armor/helmcover/nt)

/obj/item/clothing/head/beret/scp/alpha
	name = "Alpha-1 beret"
	desc = "A dark red beret worn by members of the 'Red Right Hand' MTF unit, it feels kind of heavy for a beret."
	icon_state = "alpha-beret"
	item_state = "alpha-beret"

//GOC
/obj/item/clothing/head/helmet/scp/goc
	name = "GOC helmet"
	desc = "A light blue, open face helmet with GOC writen on the side."
	icon_state = "goc-helmet"
	item_state = "goc-helmet"
	body_parts_covered = HEAD
	armor = list(melee = 40, bullet = 90, laser = 50,energy = 25, bomb = 40)
	flags_inv = HIDEEARS

/obj/item/clothing/head/beret/scp/goc
	name = "GOC beret"
	desc = "A light blue beret with a officer's rank emblem. For officers that are more inclined towards style than safety."
	icon_state = "goc-beret"
	item_state = "goc-beret"

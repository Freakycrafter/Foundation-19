/*
 * Site 53 Security
 */

// MTF LOCKERS

/*
 * Torch Security
 */

// MTF LOCKERS

/obj/structure/closet/secure_closet/mtf
	name = "MTF Locker - NO USE, ONLY FOR CODE."
	icon = 'icons/obj/sec-lockers.dmi'
	icon_state = "enlisted-locked"
	icon_closed = "enlisted-unlocked"
	icon_locked = "enlisted-locked"
	icon_opened = "enlisted-open"
	icon_off = "enlisted-off"
	anchored = 1
	req_access = list(access_securitylvl1)
	var/registered_name = null

/obj/structure/closet/secure_closet/mtf/WillContain()
	return list(
	)

/obj/structure/closet/secure_closet/mtf/enlisted
	name = "LCZ Guard's Locker"
	req_access = list(access_securitylvl2)
	icon_state = "junior-locked"
	icon_closed = "junior-unlocked"
	icon_locked = "junior-locked"
	icon_opened = "junior-open"
	icon_off = "junior-off"

/obj/structure/closet/secure_closet/mtf/enlisted/WillContain()
	return list(
		/obj/item/clothing/under/scp/utility/security,
		/obj/item/clothing/head/helmet/scp/security,
		/obj/item/device/flashlight/maglight,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/clothing/suit/armor/vest/scp/lightarmor,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/storage/belt/holster/security/tactical,
		/obj/item/gun/projectile/automatic/scp/p90,
		/obj/item/ammo_magazine/scp/p90_mag = 2,
		/obj/item/ammo_magazine/scp/p90_mag/rubber = 4,
		/obj/item/ammo_magazine/box/a10mm,
		/obj/item/melee/telebaton,
		/obj/item/handcuffs = 2,
		/obj/item/storage/box/ifak,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/clothing/gloves/tactical/scp,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/device/flash,
		/obj/item/clothing/accessory/solgov/department/security/marine,
		/obj/item/clothing/mask/balaclava,
//		/obj/item/storage/box/bloodtypes,
		/obj/item/gun/projectile/pistol/mk9,
		/obj/item/ammo_magazine/scp/mk9 = 3,
		/obj/item/ammo_magazine/box/mk9
	)

/obj/structure/closet/secure_closet/mtf/nco
	name = "LCZ Sergeant's Locker"
	req_access = list(access_securitylvl2)
	icon_state = "guard-locked"
	icon_closed = "guard-unlocked"
	icon_locked = "guard-locked"
	icon_opened = "guard-open"
	icon_off = "guard-off"

/obj/structure/closet/secure_closet/mtf/nco/WillContain()
	return list(
		/obj/item/clothing/under/scp/utility/security,
		/obj/item/clothing/head/helmet/scp/security,
		/obj/item/clothing/suit/armor/vest/scp/lightarmor,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/storage/belt/holster/security/tactical,
//		/obj/item/gun/projectile/sec/sec,
//		/obj/item/ammo_magazine/c45m = 4,
		/obj/item/gun/projectile/automatic/scp/p90,
		/obj/item/ammo_magazine/scp/p90_mag = 2,
		/obj/item/ammo_magazine/scp/p90_mag/rubber = 4,
		/obj/item/ammo_magazine/box/a10mm,
		/obj/item/melee/telebaton,
		/obj/item/handcuffs = 2,
//		/obj/item/ammo_magazine/box/c45donor,
//		/obj/item/ammo_magazine/box/c45donor/rubber,
		/obj/item/storage/box/ifak,
		/obj/item/clothing/gloves/tactical/scp,
		/obj/item/device/flash,
		/obj/item/device/flashlight/maglight,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/clothing/accessory/solgov/department/security/marine,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/clothing/mask/balaclava,
//		/obj/item/storage/box/bloodtypes,
		/obj/item/gun/projectile/pistol/mk9,
		/obj/item/ammo_magazine/scp/mk9 = 2
	)

/obj/structure/closet/secure_closet/mtf/enlisted/hcz
	name = "HCZ Guard's Locker"
	req_access = list(access_securitylvl3)

/obj/structure/closet/secure_closet/mtf/enlisted/hcz/WillContain()
	return list(
		/obj/item/clothing/under/scp/utility/security,
		/obj/item/clothing/head/helmet/scp/security,
		/obj/item/clothing/suit/armor/vest/scp/medarmor,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/storage/belt/holster/security/tactical,
//		/obj/item/gun/projectile/sec/sec,
//		/obj/item/ammo_magazine/c45m = 4,
		/obj/item/gun/projectile/automatic/scp/m16,
		/obj/item/ammo_magazine/scp/m16_mag = 3,
		/obj/item/ammo_magazine/box/a556,
		/obj/item/melee/telebaton,
		/obj/item/handcuffs = 2,
//		/obj/item/ammo_magazine/box/c45donor,
//		/obj/item/ammo_magazine/box/c45donor/rubber,
		/obj/item/storage/box/ifak,
		/obj/item/clothing/gloves/tactical/scp,
		/obj/item/device/flash,
		/obj/item/device/flashlight/maglight,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/clothing/accessory/solgov/department/security/marine,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/clothing/mask/balaclava,
//		/obj/item/storage/box/bloodtypes,
		/obj/item/gun/projectile/pistol/mk9,
		/obj/item/ammo_magazine/scp/mk9 = 2,
		/obj/item/clothing/head/bio_hood/security,
		/obj/item/clothing/suit/bio_suit/security
	)

/obj/structure/closet/secure_closet/mtf/nco/hcz
	name = "HCZ Sergeant's Locker"

/obj/structure/closet/secure_closet/mtf/nco/hcz/WillContain()
	return list(
		/obj/item/clothing/under/scp/utility/security,
		/obj/item/clothing/head/helmet/scp/security,
		/obj/item/clothing/suit/armor/vest/scp/medarmor,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/storage/belt/holster/security/tactical,
//		/obj/item/gun/projectile/sec/sec,
//		/obj/item/ammo_magazine/c45m = 4,
		/obj/item/gun/projectile/automatic/scp/m16,
		/obj/item/ammo_magazine/scp/m16_mag = 3,
		/obj/item/ammo_magazine/box/a10mm,
		/obj/item/ammo_magazine/box/a556,
		/obj/item/melee/telebaton,
		/obj/item/handcuffs = 2,
//		/obj/item/ammo_magazine/box/c45donor,
//		/obj/item/ammo_magazine/box/c45donor/rubber,
		/obj/item/storage/box/ifak,
		/obj/item/clothing/gloves/tactical/scp,
		/obj/item/device/flash,
		/obj/item/device/flashlight/maglight,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/clothing/accessory/solgov/department/security/marine,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/clothing/mask/balaclava,
//		/obj/item/storage/box/bloodtypes,
		/obj/item/gun/projectile/pistol/mk9,
		/obj/item/ammo_magazine/scp/mk9 = 2,
		/obj/item/clothing/head/bio_hood/security,
		/obj/item/clothing/suit/bio_suit/security
	)

/obj/structure/closet/secure_closet/mtf/enlisted/ez
	name = "EZ Agent's Locker"
	req_access = list(access_securitylvl3)

/obj/structure/closet/secure_closet/mtf/enlisted/ez/WillContain()
	return list(
		/obj/item/clothing/under/scp/utility/security,
		/obj/item/clothing/head/helmet/scp/security,
		/obj/item/device/flashlight/maglight,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/clothing/suit/armor/pcarrier/scp/medium,
		/obj/item/clothing/glasses/sunglasses/sechud/toggle,
		/obj/item/storage/belt/holster/security/tactical,
		/obj/item/gun/projectile/automatic/scp/p90,
		/obj/item/gun/projectile/automatic/scp/m16,
		/obj/item/ammo_magazine/scp/m16_mag = 4,
		/obj/item/ammo_magazine/box/a556,
		/obj/item/melee/telebaton,
		/obj/item/handcuffs = 2,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/clothing/gloves/tactical/scp,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/device/flash,
		/obj/item/clothing/accessory/solgov/department/security/marine,
		/obj/item/clothing/mask/balaclava,
//		/obj/item/storage/box/bloodtypes,
		/obj/item/gun/projectile/pistol/mk9,
		/obj/item/ammo_magazine/scp/mk9 = 3,
		/obj/item/ammo_magazine/box/mk9,
		/obj/item/gun/energy/taser
	)

/obj/structure/closet/secure_closet/mtf/nco/ez
	name = "EZ Senior Agent's Locker"

/obj/structure/closet/secure_closet/mtf/nco/ez/WillContain()
	return list(
		/obj/item/clothing/under/scp/utility/security,
		/obj/item/clothing/head/helmet/scp/security,
		/obj/item/clothing/suit/armor/pcarrier/scp/medium,
		/obj/item/clothing/glasses/sunglasses/sechud/toggle,
		/obj/item/storage/belt/holster/security/tactical,
		/obj/item/gun/projectile/automatic/scp/m16,
		/obj/item/ammo_magazine/scp/m16_mag = 4,
		/obj/item/ammo_magazine/box/a556,
		/obj/item/melee/telebaton,
		/obj/item/handcuffs = 2,
		/obj/item/storage/box/ifak,
		/obj/item/clothing/gloves/tactical/scp,
		/obj/item/device/flash,
		/obj/item/device/flashlight/maglight,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/clothing/accessory/solgov/department/security/marine,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/clothing/mask/balaclava,
//		/obj/item/storage/box/bloodtypes,
		/obj/item/gun/projectile/pistol/mk9,
		/obj/item/ammo_magazine/scp/mk9 = 2,
		/obj/item/gun/energy/taser,
		/obj/item/clothing/head/bio_hood/security,
		/obj/item/clothing/suit/bio_suit/security
	)

/obj/structure/closet/secure_closet/mtf/commander
	name = "Guard Commander Locker"
	req_access = list(access_securitylvl5)
	icon_state = "cm-locked"
	icon_closed = "cm-unlocked"
	icon_locked = "cm-locked"
	icon_opened = "cm-open"
	icon_off = "cm-off"

/obj/structure/closet/secure_closet/mtf/commander/WillContain()
	return list(
		/obj/item/clothing/under/scp/utility/security/gc,
		/obj/item/clothing/head/helmet/scp/security,
		/obj/item/clothing/suit/armor/vest/scp/russcom,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/storage/belt/holster/security/tactical,
		/obj/item/gun/projectile/automatic/scp/p90,
		/obj/item/ammo_magazine/scp/p90_mag = 3,
		/obj/item/ammo_magazine/scp/p90_mag/rubber = 1,
		/obj/item/ammo_magazine/box/a10mm,
		/obj/item/melee/telebaton,
		/obj/item/handcuffs = 2,
		/obj/item/storage/box/ifak,
		/obj/item/clothing/gloves/tactical/scp,
		/obj/item/device/flash,
		/obj/item/device/flashlight/maglight,
		/obj/item/clothing/gloves/tactical/scp,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/clothing/accessory/solgov/department/security/marine,
		/obj/item/clothing/mask/balaclava,
//		/obj/item/storage/box/bloodtypes,
		/obj/item/gun/projectile/revolver/mateba,
		/obj/item/ammo_magazine/box/a50,
		/obj/item/ammo_magazine/c50 = 2,
		/obj/item/gun/projectile/pistol/mk9,
		/obj/item/ammo_magazine/scp/mk9 = 2,
		/obj/item/ammo_magazine/box/mk9
	)

/obj/structure/closet/secure_closet/mtf/co
	name = "Zone Commander Locker"
	req_access = list(access_securitylvl4)
	icon_state = "co-locked"
	icon_closed = "co-unlocked"
	icon_locked = "co-locked"
	icon_opened = "co-open"
	icon_off = "co-off"

/obj/structure/closet/secure_closet/mtf/co/WillContain()
	return list(
		/obj/item/clothing/under/scp/utility/security/zc,
		/obj/item/clothing/head/helmet/scp/security,
		/obj/item/clothing/suit/armor/vest/scp/russcom,
		/obj/item/storage/belt/holster/security/tactical,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/gun/projectile/automatic/scp/m16,
		/obj/item/ammo_magazine/scp/m16_mag = 3,
		/obj/item/gun/projectile/automatic/scp/p90,
		/obj/item/ammo_magazine/scp/p90_mag = 2,
		/obj/item/ammo_magazine/scp/p90_mag/rubber = 4,
		/obj/item/ammo_magazine/box/a10mm,
		/obj/item/ammo_magazine/box/a556,
		/obj/item/clothing/accessory/storage/webbing_large,
		/obj/item/melee/telebaton,
		/obj/item/clothing/accessory/solgov/department/security/marine,
		/obj/item/handcuffs = 2,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/device/flash,
		/obj/item/device/flashlight/maglight,
		/obj/item/clothing/gloves/tactical/scp,
		/obj/item/clothing/accessory/storage/holster/thigh,
		/obj/item/clothing/mask/balaclava,
//		/obj/item/storage/box/bloodtypes,
		/obj/item/gun/projectile/revolver/mateba,
		/obj/item/ammo_magazine/box/a50,
		/obj/item/ammo_magazine/c50 = 4,
		/obj/item/gun/projectile/pistol/mk9,
		/obj/item/ammo_magazine/scp/mk9 = 2
	)

/obj/structure/closet/secure_closet/mtf/breachautomatics
	name = "automatic weapons locker"
	req_access = list(access_securitylvl2)
	icon_state = "gun-locked"
	icon_closed = "gun-unlocked"
	icon_locked = "gun-locked"
	icon_opened = "gun-open"
	icon_off = "gun-off"

/obj/structure/closet/secure_closet/mtf/breachautomatics/WillContain()
	return list(
		/obj/item/gun/projectile/automatic/scp/m16,
		/obj/item/gun/projectile/automatic/scp/m16,
		/obj/item/gun/projectile/automatic/scp/m16,
		/obj/item/ammo_magazine/scp/m16_mag = 9
	)


/obj/structure/closet/secure_closet/mtf/breachshotguns
	name = "tactical shotgun locker"
	req_access = list(access_securitylvl2)
	icon_state = "gun-locked"
	icon_closed = "gun-unlocked"
	icon_locked = "gun-locked"
	icon_opened = "gun-open"
	icon_off = "gun-off"

/obj/structure/closet/secure_closet/mtf/breachshotguns/WillContain()
	return list(
		/obj/item/gun/projectile/shotgun/pump/combat = 3,
		/obj/item/storage/box/mtf/empammo = 6,
		/obj/item/storage/box/mtf/pelletammo = 6
	)

/obj/structure/closet/secure_closet/mtf/riotshotguns
	name = "riot shotgun locker"
	req_access = list(access_securitylvl2)
	icon_state = "gun-locked"
	icon_closed = "gun-unlocked"
	icon_locked = "gun-locked"
	icon_opened = "gun-open"
	icon_off = "gun-off"

/obj/structure/closet/secure_closet/mtf/riotshotguns/WillContain()
	return list(
		/obj/item/gun/projectile/shotgun/pump = 3,
		/obj/item/storage/box/mtf/beanbag = 12,
		/obj/item/clothing/accessory/storage/bandolier/beanbag = 3
	)

/obj/structure/closet/secure_closet/mtf/riotgear
	name = "riot gear locker"
	req_access = list(access_securitylvl2)
	icon_state = "gun-locked"
	icon_closed = "gun-unlocked"
	icon_locked = "gun-locked"
	icon_opened = "gun-open"
	icon_off = "gun-off"

/obj/structure/closet/secure_closet/mtf/riotgear/WillContain()
	return list(
		/obj/item/clothing/head/helmet/riot = 3,
		/obj/item/clothing/suit/armor/riot = 3,
		/obj/item/shield/riot = 3,
		/obj/item/melee/telebaton = 3,

	)

/obj/structure/closet/secure_closet/mtf/attackby(var/obj/item/W, var/mob/user)
	if (src.opened)
		..()
	else if(W.GetIdCard())
		var/obj/item/card/id/I = W.GetIdCard()

		if(!I || !I.registered_name)
			return
		if(togglelock(user, I))
			if(!src.registered_name)
				src.registered_name = I.registered_name
				src.name += " ([I.registered_name])"
				src.desc = "Owned by [I.registered_name]."
		else
			to_chat(user, "<span class='warning'>Access Denied</span>")
	else
		..()

/obj/structure/closet/secure_closet/mtf/CanToggleLock(var/mob/user, var/obj/item/card/id/id_card)
	return ..() || (istype(id_card) && id_card.registered_name && (!registered_name || (registered_name == id_card.registered_name)))

/obj/structure/closet/secure_closet/mtf/verb/reset()
	set src in oview(1) // One square distance
	set category = "Object"
	set name = "Reset Lock"
	if(!CanPhysicallyInteract(usr)) // Don't use it if you're not able to! Checks for stuns, ghost and restrain
		return
	if(ishuman(usr))
		src.add_fingerprint(usr)
		if (src.locked || !src.registered_name)
			to_chat(usr, "<span class='warning'>You need to unlock it first.</span>")
		else if (src.broken)
			to_chat(usr, "<span class='warning'>It appears to be broken.</span>")
		else
			if (src.opened)
				if(!src.close())
					return
			src.locked = 1
//			src.icon_state = src.icon_locked
			src.registered_name = null
			src.SetName(initial(name))
			src.desc = initial(desc)

/obj/structure/closet/secure_closet/mtf/exp
	name = "Scout's Locker"
	req_access = list(access_securitylvl3)
	icon_state = "agent-locked"
	icon_closed = "agent-unlocked"
	icon_locked = "agent-locked"
	icon_opened = "agent-open"
	icon_off = "agent-off"

/obj/structure/closet/secure_closet/mtf/exp/WillContain()
	return list(
		/obj/item/clothing/suit/bio_suit/security,
		/obj/item/clothing/head/bio_hood/security,
		/obj/item/storage/belt/holster/security/tactical,
		/obj/item/storage/backpack/satchel,
		/obj/item/storage/backpack/dufflebag,
		/obj/item/grenade/frag = 2,
		/obj/item/crowbar/prybar,
		/obj/item/taperoll/research,
		/obj/item/device/tape/random = 4,
		/obj/item/device/radio,
		/obj/item/device/taperecorder,
		/obj/item/device/flashlight/maglight,
//		/obj/item/gun/projectile/colt/officer,
//		/obj/item/gun/projectile/automatic/tactical,
//		/obj/item/ammo_magazine/tac9mm = 6,
		/obj/item/storage/pill_bottle/amnesticsb,
		/obj/item/storage/box/freezer
	)

/obj/structure/closet/secure_closet/mtf/expl
	name = "Scout's Leader Locker"
	req_access = list(access_securitylvl5)
	icon_state = "cm-locked"
	icon_closed = "cm-unlocked"
	icon_locked = "cm-locked"
	icon_opened = "cm-open"
	icon_off = "cm-off"

/obj/structure/closet/secure_closet/mtf/expl/WillContain()
	return list(
		/obj/item/clothing/suit/bio_suit/security,
		/obj/item/clothing/head/bio_hood/security,
		/obj/item/storage/belt/holster/security/tactical,
		/obj/item/material/hatchet/machete = 5,
//		/obj/item/storage/pill_bottle/amnesticsb,
		/obj/item/storage/backpack/satchel,
		/obj/item/storage/backpack/dufflebag,
		/obj/item/grenade/frag = 2,
		/obj/item/device/tape/random = 4,
		/obj/item/device/radio,
		/obj/item/device/taperecorder,
		/obj/item/crowbar/prybar,
		/obj/item/device/flashlight/maglight,
//		/obj/item/gun/projectile/revolver/tactical,
//		/obj/item/gun/projectile/automatic/hcrifle,
//		/obj/item/ammo_magazine/a762 = 6,
		/obj/item/material/hatchet/machete/deluxe
	)

/obj/structure/closet/secure_closet/mtf/ntf
	name = "NTF Agent's locker"
	req_access = list(access_securitylvl3)
	icon_state = "agent-locked"
	icon_closed = "agent-unlocked"
	icon_locked = "agent-locked"
	icon_opened = "agent-open"
	icon_off = "agent-off"

/obj/structure/closet/secure_closet/mtf/ntf/WillContain()
	return list(
		/obj/item/clothing/accessory/storage/bandolier,
		/obj/item/device/flashlight/maglight,
		/obj/item/clothing/mask/balaclava,
		/obj/item/clothing/glasses/night,
		/obj/item/clothing/accessory/ubac,
		/obj/item/storage/backpack/rucksack,
		/obj/item/gun/projectile/pistol/mk9,
		/obj/item/ammo_magazine/scp/mk9 = 3,
		/obj/item/storage/belt/holster/security/tactical,
		/obj/item/melee/telebaton,
	)

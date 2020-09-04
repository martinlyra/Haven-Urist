
#define BP_L_ARM_2	"arm_left_second"
#define BP_R_ARM_2	"arm_right_second"
#define BP_L_HAND_2 "hand_left_second"
#define BP_R_HAND_2	"hand_right_second"

/datum/species/neomoth
	has_limbs = list(
		BP_CHEST =  	list("path" = /obj/item/organ/external/chest),
		BP_GROIN =  	list("path" = /obj/item/organ/external/groin),
		BP_HEAD =   	list("path" = /obj/item/organ/external/head/neomoth),
		BP_L_ARM =  	list("path" = /obj/item/organ/external/arm),
		BP_R_ARM =  	list("path" = /obj/item/organ/external/arm/right),
		BP_L_ARM_2 =  	list("path" = /obj/item/organ/external/arm/second),
		BP_R_ARM_2 =  	list("path" = /obj/item/organ/external/arm/right/second),
		BP_L_LEG =  	list("path" = /obj/item/organ/external/leg),
		BP_R_LEG =  	list("path" = /obj/item/organ/external/leg/right),
		BP_L_HAND = 	list("path" = /obj/item/organ/external/hand),
		BP_R_HAND = 	list("path" = /obj/item/organ/external/hand/right),
		BP_L_HAND_2 = 	list("path" = /obj/item/organ/external/hand/second),
		BP_R_HAND_2 = 	list("path" = /obj/item/organ/external/hand/right/second),
		BP_L_FOOT = 	list("path" = /obj/item/organ/external/foot),
		BP_R_FOOT = 	list("path" = /obj/item/organ/external/foot/right),
		BP_WING_L =		list("path" = /obj/item/organ/external/arm/wing/neomoth),
		BP_WING_R =		list("path" = /obj/item/organ/external/arm/wing/right/neomoth)
		)

/obj/item/organ/external/head/neomoth
	eye_icon_location = 'Source/Modules/HavenSpecies/~icons/mothmen_eyes.dmi'

/obj/item/organ/external/head/neomoth/get_hair_icon()
	var/image/ref = image(species.icon_template, "")
	if(owner.f_style)
		var/datum/sprite_accessory/antennae = GLOB.facial_hair_styles_list[owner.f_style]
		if (antennae && antennae.species_allowed && (species.get_bodytype(owner) in antennae.species_allowed))
			var/icon/front_sprite = new/icon("icon" = antennae.icon, "icon_state" = "[antennae.icon_state]_FRONT")
			var/icon/back_sprite = new/icon("icon" = antennae.icon, "icon_state" = "[antennae.icon_state]_BEHIND")
			if (antennae.do_colouration)
				front_sprite.Blend(owner.r_facial, owner.g_facial, owner.b_facial, antennae.blend)
				back_sprite.Blend(owner.r_facial, owner.g_facial, owner.b_facial, antennae.blend)
			ref.overlays += front_sprite
			ref.underlays += back_sprite
	return ref

/*
/obj/item/organ/external/arm/wing
	var/icon/overlay_icon
	var/icon/underlay_icon

/obj/item/organ/external/arm/wing/overlay_icon()
	return overlay_icon

/obj/item/organ/external/arm/wing/underlay_icon()
	return underlay_icon

/obj/item/organ/external/arm/wing/update_icon(var/regenerate = 0)
	..(regenerate)

	overlay_icon = new/icon()

	overlay_icon.Insert(new/icon(mob_icon, dir =NORTH), dir = NORTH)
	overlay_icon.Insert(new/icon(mob_icon, dir =WEST), dir = WEST)

	underlay_icon = new/icon()

	underlay_icon.Insert(new/icon(mob_icon, dir =SOUTH), dir = SOUTH)
	underlay_icon.Insert(new/icon(mob_icon, dir =EAST), dir = EAST)

/obj/item/organ/external/arm/wing/right/update_icon(var/regenerate = 0)
	..(regenerate)

	overlay_icon = new/icon()

	overlay_icon.Insert(new/icon(mob_icon, dir =NORTH), dir = NORTH)
	overlay_icon.Insert(new/icon(mob_icon, dir =EAST), dir = EAST)

	underlay_icon = new/icon()

	underlay_icon.Insert(new/icon(mob_icon, dir =SOUTH), dir = SOUTH)
	underlay_icon.Insert(new/icon(mob_icon, dir =WEST), dir = WEST)*/

/obj/item/organ/external/arm/wing/neomoth
	organ_tag = BP_WING_L
	name = "left wing"
	force_icon = 'Source/Modules/HavenSpecies/~icons/mothmen_wings.dmi'
	icon_name = "default_l_wing"

/obj/item/organ/external/arm/wing/get_preferrable_blend(var/direction = src.dir)
	switch(direction)
		if (NORTH)
			return ICON_OVERLAY
		if (SOUTH)
			return ICON_UNDERLAY
		if (EAST)
			if (icon_position & RIGHT)
				return ICON_OVERLAY
			else
				return ICON_UNDERLAY
		if (WEST)
			if (icon_position & LEFT)
				return ICON_OVERLAY
			else
				return ICON_UNDERLAY
		else

	return ..(direction)

/obj/item/organ/external/arm/wing/right/neomoth
	organ_tag = BP_WING_R
	name = "right wing"
	force_icon = 'Source/Modules/HavenSpecies/~icons/mothmen_wings.dmi'
	icon_name = "default_r_wing"

/obj/item/organ/external/arm/second
	organ_tag = BP_L_ARM_2
	name = "lower left arm"
	joint = "lower left elbow"
	amputation_point = "lower left shoulder"

	icon_name = "l_arm_2"

/obj/item/organ/external/arm/right/second
	organ_tag = BP_R_ARM_2
	name = "lower right arm"
	joint = "lower right elbow"
	amputation_point = "lower right shoulder"

	icon_name = "r_arm_2"

/obj/item/organ/external/hand/second
	organ_tag = BP_L_HAND_2
	parent_organ = BP_L_ARM_2
	name = "lower left hand"
	joint = "lower left wrist"
	amputation_point = "lower left wrist"

	icon_name = "l_hand_2"

/obj/item/organ/external/hand/right/second
	organ_tag = BP_R_HAND_2
	parent_organ = BP_R_ARM_2
	name = "lower right hand"
	joint = "lower right wrist"
	amputation_point = "lower right wrist"

	icon_name = "r_hand_2"

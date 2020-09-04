/* #################################
 *
 *	External organs
 *
 * ################################# */

/obj/item/organ/external/chest/kurinnurii
	name = "upper thorax"
	body_hair = "fur"
	w_class = ITEM_SIZE_GARGANTUAN

/obj/item/organ/external/chest/kurinnurii/second
	organ_tag = BP_CHEST_2
	name = "lower thorax"
	parent_organ = BP_CHEST

/obj/item/organ/external/groin/kurinnurii
	name = "abdomen"
	parent_organ = BP_CHEST_2
	body_hair = "fur"
	w_class = ITEM_SIZE_GARGANTUAN

/obj/item/organ/external/tail/kurinnurii
	body_hair = "fur"
	w_class = ITEM_SIZE_LARGE

/obj/item/organ/external/head/kurinnurii
	eye_icon_location = 'Source/Modules/HavenSpecies/~icons/kurinnurii_eyes.dmi'
	body_hair = "fur"
	w_class = ITEM_SIZE_LARGE

/obj/item/organ/external/leg/kurinnurii
	organ_tag = BP_L_HIND
	name = "left hind leg"
	body_hair = "fur"
	joint = "left hind knee"
	w_class = ITEM_SIZE_LARGE

	icon_name = "left_leg_hind"

/obj/item/organ/external/leg/right/kurinnurii
	organ_tag = BP_R_HIND
	name = "right hind leg"
	body_hair = "fur"
	joint = "right hind knee"
	w_class = ITEM_SIZE_LARGE

	icon_name = "right_leg_hind"

// RELATIVE DEFINTION

/obj/item/organ/external/arm/kurinnurii/
	body_hair = "fur"
	w_class = ITEM_SIZE_LARGE

// /obj/item/organ/external/arm/kurinnurii/
	medial/
		organ_tag = BP_L_MEDIAL
		name = "left medial leg"
		joint = "left medial elbow"
		amputation_point = "left medial shoulder"
		parent_organ = BP_CHEST_2

		icon_name = "left_leg_medial"

// /obj/item/organ/external/arm/kurinnurii/
	fore/
		organ_tag = BP_L_FORE
		name = "left fore leg"
		joint = "left fore elbow"
		amputation_point = "left thoracic shoulder"

		icon_name = "left_leg_fore"

// END RELATIVE

// RELATIVE DEFINTION

/obj/item/organ/external/arm/right/kurinnurii/
	body_hair = "fur"
	w_class = ITEM_SIZE_LARGE

// /obj/item/organ/external/arm/right/kurinnurii/
	medial/
		organ_tag = BP_R_MEDIAL
		name = "right medial leg"
		joint = "right medial elbow"
		amputation_point = "right medial shoulder"
		parent_organ = BP_CHEST_2

		icon_name = "right_leg_medial"

// /obj/item/organ/external/arm/right/kurinnurii/
	fore/
		organ_tag = BP_R_FORE
		name = "right fore leg"
		joint = "right fore elbow"
		amputation_point = "right thoracic shoulder"

		icon_name = "right_leg_fore"

// END RELATIVE

/obj/item/organ/external/foot/kurinnurii
	organ_tag = BP_L_FOOT_H
	name = "left hind foot"
	joint = "left hind ankle"
	amputation_point = "left hind ankle"
	body_hair = "fur"
	parent_organ = BP_L_HIND
	w_class = ITEM_SIZE_NORMAL

	icon_name = "left_foot_hind"

/obj/item/organ/external/foot/right/kurinnurii
	organ_tag = BP_R_FOOT_H
	name = "right hind foot"
	joint = "right hind ankle"
	amputation_point = "right hind ankle"
	body_hair = "fur"
	parent_organ = BP_R_HIND
	w_class = ITEM_SIZE_NORMAL

	icon_name = "right_foot_hind"

// RELATIVE DEFINTION

/obj/item/organ/external/hand/kurinnurii
	body_hair = "fur"
	w_class = ITEM_SIZE_NORMAL

// /obj/item/organ/external/hand/kurinnurii/
	medial/
		organ_tag = BP_L_FOOT_M
		name = "left medial hand"
		joint = "left medial wrist"
		amputation_point = "left medial wrist"
		parent_organ = BP_L_MEDIAL

		icon_name = "left_foot_medial"

// /obj/item/organ/external/hand/kurinnurii/
	fore/
		organ_tag = BP_L_FOOT_F
		name = "left fore hand"
		joint = "left fore wrist"
		amputation_point = "left fore wrist"
		parent_organ = BP_L_FORE

		icon_name = "left_foot_fore"

// END RELATIVE

// RELATIVE DEFINTION

/obj/item/organ/external/hand/right/kurinnurii
	body_hair = "fur"
	w_class = ITEM_SIZE_NORMAL

// /obj/item/organ/external/hand/right/kurinnurii/
	medial/
		organ_tag = BP_R_FOOT_M
		name = "right medial hand"
		joint = "right medial wrist"
		amputation_point = "right medial wrist"
		parent_organ = BP_R_MEDIAL

		icon_name = "right_foot_medial"

// /obj/item/organ/external/hand/kurinnurii/
	fore/
		organ_tag = BP_R_FOOT_F
		name = "right fore hand"
		joint = "right fore wrist"
		amputation_point = "right fore wrist"
		parent_organ = BP_R_FORE

		icon_name = "right_foot_fore"

// END RELATIVE

/* #################################
 *
 *	Internal organs
 *
 * ################################# */

// RELATIVE DEFINTION

/obj/item/organ/internal/heart/kurinnurii/
	w_class = ITEM_SIZE_LARGE

// /obj/item/organ/internal/heart/kurinnurii/
	first/
		name = "thoracic cardiac cluster"

// /obj/item/organ/internal/heart/kurinnurii/
	second/
		organ_tag = BP_HEART_2
		name = "inferior cardiac cluster"
		parent_organ = BP_CHEST_2

// END RELATIVE

// RELATIVE DEFINTION

/obj/item/organ/internal/lungs/kurinnurii/
	w_class = ITEM_SIZE_HUGE

// /obj/item/organ/internal/lungs/kurinnurii/
	first/
		name = "superior lung sac"
// /obj/item/organ/internal/lungs/kurinnurii/
	second/
		organ_tag = BP_LUNGS_2
		name = "inferior lung sac"
		parent_organ = BP_CHEST_2

// END RELATIVE

// RELATIVE DEFINTION

/obj/item/organ/internal/eyes/kurinnurii/
	w_class = ITEM_SIZE_NORMAL

// /obj/item/organ/internal/lungs/kurinnurii/
	first/
		name = "eyeballs, major"

// /obj/item/organ/internal/lungs/kurinnurii/
	second/
		organ_tag = BP_EYES_2
		name = "eyeballs, minor"

// END RELATIVE

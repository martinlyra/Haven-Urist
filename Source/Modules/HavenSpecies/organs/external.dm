#define BP_TAIL "tail"
#define BP_WING_L	"wing_left"
#define BP_WING_R	"wing_right"

#define BPDL_CENTER 0
#define BPDL_SIDE 1

#define BPDL_LEGACY_BODY 0

/obj/item/organ/external/var/mob_drawing_layer = 0

/obj/item/organ/external/tail
	organ_tag = BP_TAIL
	name = "tail"
	max_damage = 50
	min_broken_damage = 30
	w_class = ITEM_SIZE_NORMAL
	parent_organ = BP_GROIN

	icon_name = "tail"

/obj/item/organ/external/arm/wing
	organ_tag = BP_WING_L
	name = "left wing"
	icon_name = "l_wing"
	icon_position = LEFT

	limb_flags = ORGAN_FLAG_CAN_BREAK | ORGAN_FLAG_CAN_AMPUTATE
	onmob_icon_type = ONMOB_ICON_OVERLAY

/obj/item/organ/external/arm/wing/right
	organ_tag = BP_WING_R
	name = "right wing"
	icon_name = "r_wing"
	icon_position = RIGHT

/*
/obj/item/organ/external/proc/compile_icon()
	overlays.Cut()
	underlays.Cut()
	 // This is a kludge, only one icon has more than one generation of children though.
	for(var/obj/item/organ/external/organ in contents)
		if(organ.children && organ.children.len)
			for(var/obj/item/organ/external/child in organ.children)
				//overlays += child.overlay_icon()
				underlays += child.underlay_icon()
		//overlays += organ.overlay_icon()
		underlays += organ.underlay_icon()
*/

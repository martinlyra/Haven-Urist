
/datum/arg_object/mob_icon_part
	var/icon/body_icon
	var/icon/cloth_icon
	var/blend_style = ICON_OVERLAY
	var/icon_type = ONMOB_ICON_BASE

/obj/item/organ/external/proc/visit_mob_icon_part(var/direction, var/list/args)
	var/datum/arg_object/mob_icon_part/O = new /datum/arg_object/mob_icon_part()

	O.body_icon = new/icon(get_icon(), dir= direction)
	O.cloth_icon = new/icon(get_icon(), dir= direction)
	O.blend_style = get_preferrable_blend(direction)
	O.icon_type = onmob_icon_type

	return O

/obj/item/organ/external/proc/get_preferrable_blend(var/direction = src.dir)
	if (icon_position & UNDER)
		return ICON_UNDERLAY

	if (icon_position & RIGHT || icon_position & LEFT)
		switch(direction)
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

	return ICON_OVERLAY

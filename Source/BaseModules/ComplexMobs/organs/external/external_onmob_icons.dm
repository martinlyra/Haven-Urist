/var/list/limb_overlay_icon_cache = list()

/obj/item/organ/external/proc/should_blend_to_mob_base_icon()
  return onmob_icon_type == ONMOB_ICON_BASE

/obj/item/organ/external/proc/get_onmob_icon_key_part()
  return icon_cache_key

/obj/item/organ/external/proc/get_onmob_overlay()
  return mob_icon

/obj/item/organ/external/proc/get_onmob_underlay()
	return 0

/mob/living/carbon/human/proc/get_body_iconstate_key()
  var/g = "male"
  if(gender == FEMALE)
    g = "female"

  . = "[species.get_race_key(src)][g][s_tone][r_skin][g_skin][b_skin]"
  if(lip_style)
    . += "[lip_style]"
  else
    . += "nolips"
  var/obj/item/organ/internal/eyes/eyes = internal_organs_by_name[species.vision_organ ? species.vision_organ : BP_EYES]
  if(istype(eyes))
    . += "[rgb(eyes.eye_colour[1], eyes.eye_colour[2], eyes.eye_colour[3])]"
  else
    . += "#000000"

  for(var/organ_tag in species.has_limbs)
    var/obj/item/organ/external/part = organs_by_name[organ_tag]
    if(isnull(part) || part.is_stump() || !part.should_blend_to_mob_base_icon())
      . += "0"
      continue
    . += part.get_onmob_icon_key_part()


//BASE MOB SPRITE
/mob/living/carbon/human/proc/update_body(var/update_icons=1)
  var/husk_color_mod = rgb(96,88,80)
  var/hulk_color_mod = rgb(48,224,40)

  var/husk = (HUSK in src.mutations)
  var/fat = (FAT in src.mutations)
  var/hulk = (HULK in src.mutations)
  var/skeleton = (SKELETON in src.mutations)

  //CACHING: Generate an index key from visible bodyparts.
  //0 = destroyed, 1 = normal, 2 = robotic, 3 = necrotic.

  //Create a new, blank icon for our mob to use.
  if(stand_icon)
    qdel(stand_icon)
  stand_icon = new(species.icon_template ? species.icon_template : 'icons/mob/human.dmi',"blank")

  var/icon_key = get_body_iconstate_key()
  icon_key += "[husk ? 1 : 0][fat ? 1 : 0][hulk ? 1 : 0][skeleton ? 1 : 0]"

  var/icon/base_icon
  if(human_icon_cache[icon_key])
    base_icon = human_icon_cache[icon_key]
  else
    //BEGIN CACHED ICON GENERATION.
    /var/datum/rick/mob_icon_compiler/R = new()
    base_icon = R.generate(src)

    if(!skeleton)
      if(husk)
        base_icon.ColorTone(husk_color_mod)
      else if(hulk)
        var/list/tone = ReadRGB(hulk_color_mod)
        base_icon.MapColors(rgb(tone[1],0,0),rgb(0,tone[2],0),rgb(0,0,tone[3]))

    //Handle husk overlay.
    if(husk)
      var/husk_icon = species.get_husk_icon(src)
      if(husk_icon)
        var/icon/mask = new(base_icon)
        var/icon/husk_over = new(species.husk_icon,"")
        mask.MapColors(0,0,0,1, 0,0,0,1, 0,0,0,1, 0,0,0,1, 0,0,0,0)
        husk_over.Blend(mask, ICON_ADD)
        base_icon.Blend(husk_over, ICON_OVERLAY)

    human_icon_cache[icon_key] = base_icon

  //END CACHED ICON GENERATION.
  stand_icon.Blend(base_icon,ICON_OVERLAY)

  //tail
  update_tail_showing(0)

  if(update_icons)
    queue_icon_update()

///mob/living/carbon/human/proc/update_body_overlays(var/update_icons)

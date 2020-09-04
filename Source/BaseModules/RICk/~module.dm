// Runtime Icon Compiler

/*************************************

RIC (RICK) - Runtime Icon Compiler

**************************************/

#define RICK_MODULE

#define RICK_DEBUG_SAVE_OUTPUT FALSE

/*

Design sketch of how to utilize Ric:

Create compiler object

Configure or set up settings for compiler
- Compiler features
- Icon layering settings
- Visitors (handlers)


Set target reference

Compile
- Visit parts
	- Collect icon info (if one is returned)
- Order up parts
	- Respect to icon info
	- Respect to settings
- Compile parts
- Return product

Destroy

*/

#include "visitors/organ_visitor.dm"

#define MOB_BODY_INDEX_TORSO 	"mbi_torso"
#define MOB_BODY_INDEX_LEG 		"mbi_leg"
#define MOB_BODY_INDEX_ARM 		"mbi_arm"
#define MOB_BODY_INDEX_CUSTOM	"mbi_custom"

/*
#define FRONT
#define ADJACENT
#define BEHIND

#define PART_POSITION_FRONT			list(NORTH = BEHIND, SOUTH = FRONT, WEST = ADJACENT, EAST = ADJACENT)
#define PART_POSITION_SIDE_LEFT		list(NORTH = ADJACENT, SOUTH = ADJACENT, WEST = FRONT, EAST = BEHIND)
#define PART_POSITION_SIDE_RIGHT	list(NORTH = ADJACENT, SOUTH = ADJACENT, WEST = BEHIND, EAST = FRONT)
#define PART_POSITION_BEHIND		list(NORTH = FRONT, SOUTH = BEHIND, WEST = ADJACENT, EAST = ADJACENT)
*/

#define PART_INDEX_BASE 		"part_base"
#define PART_INDEX_HAIR			"part_hair"
#define PART_INDEX_UNDER		"part_underwear"
#define PART_INDEX_UNIFORM		"part_unifrom"
#define PART_INDEX_SUIT			"part_suit"
#define PART_INDEX_ACCESSORY	"part_accessory"

#define DEFAULT_DIRECTION_LIST 	list(SOUTH, NORTH, EAST, WEST)

/datum/rick/
	var/boop = 0

/datum/rick/New()
	return

/datum/rick/proc/generate(var/atom/A)
	return new/icon()

/datum/rick/proc/log_event(var/message)
	world.log << "\[RICK\]: [message]"

/datum/rick/mob_icon_compiler/generate(var/mob/living/carbon/human/H)
	var/icon/output_icon

	var/list/directions = DEFAULT_DIRECTION_LIST
	var/list/components = list()

	for(var/direction in directions)
		try
			var/icon/dir_base_icon = compile_direction(direction, H)
			#if defined(RICK_DEBUG_SAVE_OUTPUT) && RICK_DEBUG_SAVE_OUTPUT
			src.log_event("Debug: Saving result icon to RICK_output_[direction].dmi ... Result: [fcopy(dir_base_icon, "RICK_output_[direction].dmi")]")
			#endif
			components["[direction]"] = dir_base_icon
		catch (var/exception/e)
			src.log_event("[direction_to_string(direction)] has error'd with [e] on [e.file]:[e.line]. Skipping direction.")

	for(var/direction in components)
		try
			if (!components[direction])
				continue
			if (!output_icon)
				output_icon = icon(icon= 'Source/BaseModules/RICk/blanks_32.dmi', icon_state= "")
			output_icon.Insert(components[direction], dir= text2num(direction))
		catch (var/exception/e)
			src.log_event("ERR: Couldn't Insert() compononent of [direction_to_string(text2num(direction))] to output. Cause: [e]")

	if (output_icon)
		#if (defined(RICK_DEBUG_SAVE_OUTPUT) && RICK_DEBUG_SAVE_OUTPUT)
		src.log_event("Debug: Saving output icon to RICK_output_post.dmi ... Result: [fcopy(output_icon, "RICK_output_post.dmi")]")
		#endif
	else
		src.log_event("ERR: Compile of icon for [H] (\ref[H]) has failed. Returning null.")

	src.log_event("Done!")

	return output_icon

/datum/rick/mob_icon_compiler/proc/compile_direction(var/direction, var/mob/living/carbon/human/H)
	var/icon/base_icon = icon(icon= 'Source/BaseModules/RICk/blanks_32.dmi', icon_state= "d1")
	//src.log_event("Debug: Pre-compile '[base_icon]' (\ref[base_icon]), '[base_icon.icon]' (\ref[base_icon.icon])")

	for(var/obj/item/organ/external/part in (H.organs))
		try
			var/datum/arg_object/mob_icon_part/O = part.visit_mob_icon_part(direction, list())
			if (!O || O.icon_type != ONMOB_ICON_BASE)
				continue
			if (O && O.body_icon)
				base_icon.Blend(new/icon(O.body_icon), O.blend_style)

				//src.log_event("Blended [part.organ_tag] into [direction_to_string(direction)] component with [blend_to_string(O.blend_style)]")
		catch (var/exception/e)
			src.log_event("ERR: Dir:[direction_to_string(direction)] Tag:[part.organ_tag] \"[e]\" on [e.file]:[e.line]. Skipping part.")

	//src.log_event("Debug: Post-compile '[base_icon]' (\ref[base_icon]), '[base_icon.icon]' (\ref[base_icon.icon])")
	return base_icon

/proc/direction_to_string(var/dir)
	switch (dir)
		if (NORTH)
			return "NORTH"
		if (SOUTH)
			return "SOUTH"
		if (WEST)
			return "WEST"
		if (EAST)
			return "EAST"
		else
	return "UNKNOWN DIR ([dir])"

/proc/blend_to_string(var/blend)
	switch (blend)
		if (ICON_OVERLAY)
			return "ICON_OVERLAY"
		if (ICON_UNDERLAY)
			return "ICON_UNDERLAY"
		else
	return "UNKNOWN BLEND ([blend])"

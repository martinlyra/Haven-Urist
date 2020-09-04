/* #################################
 *
 *	DEFINITION OF KURINNURII SPECIES
 *
 * ################################# */

#define SPECIES_KURINNURII		"Kurinnurii"
#define SPECIES_KURINNURII_PLURAL	SPECIES_KURINNURII
#define SPECIES_KURINNURII_DESCRIPTION "\
TODO: Add description"

#include "kurinnurii_anatomy.dm"
#include "kurinnurii_movement.dm"

/datum/species/kurinnurii
	name = 			SPECIES_KURINNURII
	name_plural = 	SPECIES_KURINNURII_PLURAL
	description = 	SPECIES_KURINNURII_DESCRIPTION

	icobase = 		'Source/Modules/HavenSpecies/~icons/kurinnurii_base.dmi'
	preview_icon = 	'Source/Modules/HavenSpecies/~icons/kurinnurii_preview.dmi'

	spawn_flags = SPECIES_CAN_JOIN

	// Copy n paste from species.dm
	brute_mod =      0.80                  // Physical damage multiplier.
	burn_mod =       1.10                  // Burn damage multiplier.
	oxy_mod =        1.20                  // Oxyloss modifier
	toxins_mod =     0.40                  // Toxloss modifier
	radiation_mod =  0.70                  // Radiation modifier
	flash_mod =      1.50                  // Stun from blindness modifier.
	metabolism_mod = 1.00                  // Reagent metabolism modifier
	stun_mod =       0.90                  // Stun period modifier.
	paralysis_mod =  1.00                  // Paralysis period modifier.
	weaken_mod =     0.90                  // Weaken period modifier.

/* #################################
 *
 *	Biology/Biochemistry
 *
 * ################################# */

	breath_type = "hydrogen"
	exhale_type = "methane"

	poison_types = list(
		"chlorine" = TRUE,
		"fluorine" = TRUE
	)

	// Pressure-related

	breath_pressure = 2.2 * ONE_ATMOSPHERE	// hydrogen is inefficient for biochemistry, plus, Kurinnurii are relatively huge

	max_pressure_diff = 6.6 * ONE_ATMOSPHERE // 11 times that of humans

	warning_low_pressure = 22.35 * ONE_ATMOSPHERE
	warning_high_pressure =  147.51 * ONE_ATMOSPHERE // this is so stupid, but hey, I was following the same suit for humans

	hazard_low_pressure = 0
	hazard_high_pressure = 245.85 * ONE_ATMOSPHERE // Yep, this time I followed same suit as above, but with 5.5


	// Temperature comfort and damage range levels

	body_temperature = -70 CELCIUS

	cold_discomfort_level = -90 CELCIUS
	heat_discomfort_level = -50 CELCIUS

	// Start taking freeze-burn damage, level 3 is worst
	cold_level_1 = -110 CELCIUS		// <40 degrees colder than melting point of Ammonia
	cold_level_2 = -150 CELCIUS		//
	cold_level_3 = -170 CELCIUS 	// Nearly the freezing point of Oxygen

	// Start taking burn damage
	heat_level_1 = -40 CELCIUS		// <14 degrees away from boiling point of Ammonia
	heat_level_2 = 0 CELCIUS 		// Melting point of water, >30 degrees over boiling point of Ammonia
	heat_level_3 = 10 CELCIUS		//

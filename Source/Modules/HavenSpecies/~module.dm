/* #################################################
 *
 *	Module: EXTRA COMPLIEX ALIEN SPECIES
 *
 * ################################################# */

#ifndef ECAS_MODULE_INCLUDED
#define ECAS_MODULE_INCLUDED
#else
#warn "Duplication of macro ECAS_MODULE_INCLUDED found."
#endif

/* #################################################
 *
 *	Code & Feature extensions
 *
 * ################################################# */

#include "organs/external.dm"

#include "sprite_accessory/_accessory_antennae.dm"
#include "sprite_accessory/_accessory_wings.dm"

/* #################################################
 *
 *	Species
 *
 * ################################################# */

#define ENABLE_SPECIES_KURINNURII TRUE
#define ENABLE_SPECIES_NEOMOTH 		TRUE

/*
 * Inclusions
 */

#if defined(ENABLE_SPECIES_KURINNURII) && ENABLE_SPECIES_KURINNURII
#include "species/kurinnurii/kurinnurii.dm"
#endif
#if defined(ENABLE_SPECIES_NEOMOTH) && ENABLE_SPECIES_NEOMOTH
#include "species/neomoth/neomoth.dm"
#endif

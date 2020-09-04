#include "_defines.dm"

//Human Overlays Indexes/////////
#define MUTATIONS_LAYER			1
#define SKIN_LAYER				2
#define DAMAGE_LAYER			3
#define SURGERY_LEVEL			4		//bs12 specific.
#define UNDERWEAR_LAYER         5
#define UNIFORM_LAYER			6
#define ID_LAYER				7
#define SHOES_LAYER				8
#define GLOVES_LAYER			9
#define BELT_LAYER				10
#define SUIT_LAYER				11
#define TAIL_LAYER				12		//bs12 specific. this hack is probably gonna come back to haunt me
#define GLASSES_LAYER			13
#define BELT_LAYER_ALT			14
#define SUIT_STORE_LAYER		15
#define BACK_LAYER				16
#define HAIR_LAYER				17		//TODO: make part of head layer?
#define GOGGLES_LAYER			18
#define EARS_LAYER				19
#define FACEMASK_LAYER			20
#define HEAD_LAYER				21
#define COLLAR_LAYER			22
#define HANDCUFF_LAYER			23
#define L_HAND_LAYER			24
#define R_HAND_LAYER			25
#define FIRE_LAYER				26		//If you're on fire
#define TARGETED_LAYER			27		//BS12: Layer for the target overlay from weapon targeting system
#define TOTAL_LAYERS			27
//////////////////////////////////

#include "mobs/living/carbon/icons/update_icons_base.dm"
#include "mobs/living/carbon/icons/update_icons_body.dm"
#include "mobs/living/carbon/icons/update_icons_clothes.dm"
#include "mobs/living/carbon/icons/update_icons_extras.dm"

#include "organs/external/external_define.dm"
#include "organs/external/external_onmob_icons.dm"

#ifdef UNDEFINE_ONMOB_LAYERS
//Human Overlays Indexes/////////
#undef MUTATIONS_LAYER
#undef DAMAGE_LAYER
#undef SURGERY_LEVEL
#undef UNIFORM_LAYER
#undef ID_LAYER
#undef SHOES_LAYER
#undef GLOVES_LAYER
#undef EARS_LAYER
#undef SUIT_LAYER
#undef TAIL_LAYER
#undef GLASSES_LAYER
#undef FACEMASK_LAYER
#undef BELT_LAYER
#undef SUIT_STORE_LAYER
#undef BACK_LAYER
#undef HAIR_LAYER
#undef HEAD_LAYER
#undef COLLAR_LAYER
#undef HANDCUFF_LAYER
#undef LEGCUFF_LAYER
#undef L_HAND_LAYER
#undef R_HAND_LAYER
#undef TARGETED_LAYER
#undef FIRE_LAYER
#undef TOTAL_LAYERS
#endif

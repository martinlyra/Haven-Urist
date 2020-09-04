
#define BP_CHEST_2 "chest_second"

#define BP_L_HIND "hind_left"
#define BP_R_HIND "hind_right"
#define BP_L_MEDIAL "medial_left"
#define BP_R_MEDIAL "medial_right"
#define BP_L_FORE "fore_left"
#define BP_R_FORE "fore_right"

#define BP_L_FOOT_H "foot_left_hind"
#define BP_R_FOOT_H "foot_right_hind"
#define BP_L_FOOT_M "foot_left_medial"
#define BP_R_FOOT_M "foot_right_medial"
#define BP_L_FOOT_F "foot_left_fore"
#define BP_R_FOOT_F "foot_right_fore"

#define BP_HEART_2 "heart_second"
#define BP_LUNGS_2 "lungs_second"
#define BP_EYES_2 "eyes_second"

#include "kurinnurii_organs.dm"

/datum/species/kurinnurii
	has_limbs = list(
		BP_CHEST =  	list("path" = /obj/item/organ/external/chest/kurinnurii),
		BP_CHEST_2 = 	list("path" = /obj/item/organ/external/chest/kurinnurii/second),
		BP_GROIN =  	list("path" = /obj/item/organ/external/groin/kurinnurii),
		BP_TAIL = 		list("path" = /obj/item/organ/external/tail/kurinnurii),
		BP_HEAD =   	list("path" = /obj/item/organ/external/head/kurinnurii),
		BP_L_HIND =  	list("path" = /obj/item/organ/external/leg/kurinnurii),
		BP_R_HIND =  	list("path" = /obj/item/organ/external/leg/right/kurinnurii),
		BP_L_MEDIAL =  	list("path" = /obj/item/organ/external/arm/kurinnurii/medial),
		BP_R_MEDIAL =  	list("path" = /obj/item/organ/external/arm/right/kurinnurii/medial),
		BP_L_FORE = 	list("path" = /obj/item/organ/external/arm/kurinnurii/fore),
		BP_R_FORE = 	list("path" = /obj/item/organ/external/arm/right/kurinnurii/fore),
		BP_L_FOOT_H = 	list("path" = /obj/item/organ/external/foot/kurinnurii),
		BP_R_FOOT_H = 	list("path" = /obj/item/organ/external/foot/right/kurinnurii),
		BP_L_FOOT_M = 	list("path" = /obj/item/organ/external/hand/kurinnurii/medial),
		BP_R_FOOT_M = 	list("path" = /obj/item/organ/external/hand/right/kurinnurii/medial),
		BP_L_FOOT_F = 	list("path" = /obj/item/organ/external/hand/kurinnurii/fore),
		BP_R_FOOT_F = 	list("path" = /obj/item/organ/external/hand/right/kurinnurii/fore)
		)

	has_organ = list(
		BP_HEART =    	/obj/item/organ/internal/heart/kurinnurii/first,
		BP_HEART_2 =	/obj/item/organ/internal/heart/kurinnurii/second,

		BP_LUNGS =    	/obj/item/organ/internal/lungs/kurinnurii/first,
		BP_LUNGS_2 =	/obj/item/organ/internal/lungs/kurinnurii/second,

		BP_LIVER =    	/obj/item/organ/internal/liver,
		BP_KIDNEYS =  	/obj/item/organ/internal/kidneys,
		BP_BRAIN =    	/obj/item/organ/internal/brain,

		BP_EYES =     	/obj/item/organ/internal/eyes/kurinnurii/first,
		BP_EYES_2 =		/obj/item/organ/internal/eyes/kurinnurii/second
		)

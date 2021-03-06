/area/engineering
	icon_state = "yellow"

/area/engineering/tool
	name = "\improper Engineering Workshop"

/area/engineering/lobby
	name = "\improper Engineering"
	icon_state = "engineering_foyer"

/area/engineering/break_room
	name = "\improper Engineering Break Room"
	icon_state = "engineering_foyer"

/area/engineering/locker
	name = "\improper Engineering Locker Room"
	icon_state = "engineering_locker"

/area/engineering/genstorage
	name = "\improper Engineering Storage"
	icon_state = "engineering_storage"

/area/engineering/engine_monitoring
	name = "\improper Reactor Monitoring Room"
	icon_state = "engine_monitoring"

/area/engineering/fuel_burn
	name = "\improper Fuel Combustion"

/area/engineering/atmospherics
	icon_state = "atmos"
/area/engineering/atmospherics/upper
		name = "\improper Atmospherics, Upper Floor"
/area/engineering/atmospherics/lower
		name = "\improper Atmospherics"
/area/engineering/atmospherics/mon
		name = "\improper Atmospherics Monitoring Room"

/area/engineering/gas_storage
	name = "\improper Gas Vessel Storage"
	icon_state = "atmos"

/area/engineering/shield_gen_bay
	name = "\improper Shield Generator Bay"

/area/engineering/engine
	name = "\improper Reactor Room"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED

/area/engineering/smes
	name = "\improper SMES Room"
	sound_env = SMALL_ENCLOSED
	icon_state = "engine_smes"

/area/engineering/smes/upper
	name = "\improper SMES Room, Upper Floor"

/area/engineering/securestorage
	name = "\improper Secure Storage"
	sound_env = SMALL_ENCLOSED

/area/engineering/techstorage
	name = "\improper Tech Storage"

/area/engineering/stech
	name = "\improper Secure Tech Storage"

/area/engineering/evastorage
	name = "\improper Engineering EVA Storage"

/area/engineering/tcomms
	name = "\improper Telecommunications Server"

/area/engineering/tcommsmon
	name = "\improper Telecommunication Monitoring Room"

/area/engineering/engine_waste
	name = "\improper Engine Waste Handling"
	icon_state = "engine_waste"

/area/engineering/fuelbay
	name = "\improper Fuel Bay"

/area/engineering/engine
	name = "\improper Engine Bay"
/area/engineering/engine/bdport
		name = "\improper First Deck Port Engine Bay"
/area/engineering/engine/bdstar
		name = "\improper First Deck Starboard Engine Bay"
/area/engineering/engine/port
		name = "\improper Second Deck Port Engine Bay"
/area/engineering/engine/star
		name = "\improper Second Deck Starboard Engine Bay"
/area/engineering/engine/tdport
		name = "\improper Third Deck Port Engine Bay"
/area/engineering/engine/tdstar
		name = "\improper Third Deck Starboard Engine Bay"

/area/engineering/drone_fabrication
	name = "\improper Drone Fabrication"
	icon_state = "drone_fab"
	sound_env = SMALL_ENCLOSED

/area/engineering/first_deck_storage
	name = "\improper Auxiliary Engineering Storage"
	icon_state = "engineering_storage"
	sound_env = SMALL_ENCLOSED

/area/engineering/first_deck_atmos
	name = "\improper First Deck Atmospherics Storage"
	icon_state = "engineering_storage"
	sound_env = SMALL_ENCLOSED

// Substations

/area/engineering/substation
	name = "/improper Substation"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/engineering/substation/first_deck
	name = "\improper First Deck Substation"

/area/engineering/substation/second_deck
	name = "\improper Second Deck Substation"

/area/engineering/substation/third_deck
	name = "\improper Third Deck Substation"

/area/engineering/substation/atmos
	name = "\improper Atmospherics Substation"

/area/engineering/substation/bridge
	name = "\improper Bridge Substation"

//solars

/area/solar/main
	name = "\improper Main Solar Array"
	icon_state = "panelsS"

/area/solar/auxaft
	name = "\improper Aft Auxiliary Solar Array"
	icon_state = "panelsA"

/area/maintenance/mainsolar
	name = "\improper Solar Maintenance - Main"
	icon_state = "SolarcontrolS"
	sound_env = SMALL_ENCLOSED

/area/maintenance/aftsolar
	name = "\improper Solar Maintenance - Aft Auxiliary"
	icon_state = "SolarcontrolA"
	sound_env = SMALL_ENCLOSED

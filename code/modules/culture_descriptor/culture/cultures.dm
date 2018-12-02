/decl/cultural_info/culture/generic
	name = CULTURE_OTHER
	description = "You are from one of the many small, relatively unknown cultures scattered across the galaxy."

/decl/cultural_info/culture/human
	name = CULTURE_HUMAN
	description = "You are from one of various planetary cultures of humankind."
	language = LANGUAGE_SOL_COMMON
	secondary_langs = list(LANGUAGE_GALCOM)

/decl/cultural_info/culture/human/vatgrown
	name = CULTURE_HUMAN_VATGROWN
	description = "You were grown in a vat, either as clone or as a gene-adapt, and your outlook diverges from baseline humanity accordingly."
	language = LANGUAGE_GALCOM
	secondary_langs = list(LANGUAGE_SOL_COMMON)

/decl/cultural_info/culture/human/vatgrown/sanitize_name(name)
	return sanitizeName(name, allow_numbers=TRUE)

/decl/cultural_info/culture/human/vatgrown/get_random_name(gender)
	// #defines so it's easier to read what's actually being generated
	#define LTR ascii2text(rand(65,90)) // A-Z
	#define NUM ascii2text(rand(48,57)) // 0-9
	#define NAME capitalize(pick(gender == FEMALE ? GLOB.first_names_female : GLOB.first_names_male))
	switch(rand(1,4))
		if(1) return NAME
		if(2) return "[LTR][LTR]-[NAME]"
		if(3) return "[NAME]-[NUM][NUM][NUM]"
		if(4) return "[LTR][LTR]-[NUM][NUM][NUM]"
	. = 1 // Never executed, works around http://www.byond.com/forum/?post=2072419
	#undef LTR
	#undef NUM
	#undef NAME

/decl/cultural_info/culture/human/martian
	name = CULTURE_HUMAN_MARTIAN
	description = "You are from the surface of Mars. (placeholder)"
	secondary_langs = list(LANGUAGE_SOL_COMMON)
	economic_power = 1

/decl/cultural_info/culture/human/terran
	name = CULTURE_HUMAN_TERRAN
	description = "Placeholder."
	secondary_langs = list(LANGUAGE_SOL_COMMON)
	economic_power = 1.3

/decl/cultural_info/culture/human/lunarian
	name = CULTURE_HUMAN_LUNARIAN
	description = "Placeholder."
	secondary_langs = list(LANGUAGE_SOL_COMMON)
	economic_power = 1.3

/decl/cultural_info/culture/human/yamato
	name = CULTURE_HUMAN_YAMATO
	description = "Placeholder."
	secondary_langs = list(LANGUAGE_SOL_COMMON)
	economic_power = 1.3

/decl/cultural_info/culture/human/newalesian
	name = CULTURE_HUMAN_NEWALESIAN
	description = "Placeholder."
	secondary_langs = list(LANGUAGE_FRONTIER_BASIC, LANGUAGE_SOL_COMMON)
	economic_power = 1.3

/decl/cultural_info/culture/human/taucetian
	name = CULTURE_HUMAN_TAUCETIAN
	description = "Placeholder."
	secondary_langs = list(LANGUAGE_SOL_COMMON)
	economic_power = 1.3

/decl/cultural_info/culture/human/alesian
	name = CULTURE_HUMAN_ALESIAN
	description = "Placeholder."
	secondary_langs = list(LANGUAGE_FRONTIER_BASIC)
	economic_power = 1.3

/decl/cultural_info/culture/human/svetslandian
	name = CULTURE_HUMAN_SVETSLANDIAN
	description = "Placeholder."
	secondary_langs = list(LANGUAGE_FRONTIER_BASIC)
	economic_power = 1.3

/decl/cultural_info/culture/human/mayworthian
	name = CULTURE_HUMAN_MAYWORTHIAN
	description = "Placeholder."
	secondary_langs = list(LANGUAGE_FRONTIER_BASIC)
	economic_power = 1.3

/decl/cultural_info/culture/human/novorussian
	name = CULTURE_HUMAN_NOVORUSSIAN
	description = "Placeholder."
	secondary_langs = list(LANGUAGE_UNION_STANDARD)
	economic_power = 1.3

/decl/cultural_info/culture/human/other
	name = CULTURE_HUMAN_OTHER
	description = "Some people are from places no one has ever heard of or places too wild and fantastical to make it into Encyclopedia Galactica. You are one of these. "
	secondary_langs = list(LANGUAGE_SOL_COMMON, LANGUAGE_SIGN)
	economic_power = 1

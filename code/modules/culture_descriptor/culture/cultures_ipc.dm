/decl/cultural_info/culture/ipc
	name = CULTURE_POSITRONICS
	description = "Union members are a significant chunk of the USO population, belonging to either\
	the original surviving synthetics of the Hawking ship, or synthetics which have joined and claimed their citizenships during\
	the many decades of existence of the USO."
	language = LANGUAGE_EAL
	name_language = LANGUAGE_EAL
	additional_langs = list(LANGUAGE_GALCOM)

/decl/cultural_info/culture/vdpr
	name = CULTURE_VDPR
	description = "Valem Democratic People's Republic citizens are a significant chunk of the galaxy's workers synthetic citizen, being mostly composed of \
	either cyborgs or sentient IPCs. They constitute a major workforce anywhere."
	language = LANGUAGE_EAL
	name_language = LANGUAGE_EAL
	additional_langs = list(LANGUAGE_GALCOM)

/decl/cultural_info/culture/ipc/sanitize_name(var/new_name)
	return sanitizeName(new_name, allow_numbers = 1)

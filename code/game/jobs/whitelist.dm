#define WHITELISTFILE "data/whitelist.txt"

var/list/whitelist = list()

/hook/startup/proc/loadWhitelist()
	if(config.usewhitelist)
		load_whitelist()
	return 1

/proc/load_whitelist()
	whitelist = file2list(WHITELISTFILE)
	if(!whitelist.len)	whitelist = null

/proc/check_whitelist(mob/M /*, var/rank*/)
	if(!whitelist)
		return 0
	return ("[M.ckey]" in whitelist)

/var/list/job_whitelist = list()

/hook/startup/proc/loadJobWhitelist()
	if(config.usejobwhitelist)
		if(config.usejobwhitelistSQL)
			if(!load_jobwhitelistSQL())
				world.log << "Could not load job whitelist via SQL."
		else
			load_jobwhitelist()
	return 1

/proc/load_jobwhitelist()
	var/text = file2text("config/jobwhitelist.txt")
	if (!text)
		log_misc("Failed to load config/jobwhitelist.txt.")
		return 0
	else
		job_whitelist = splittext(text, "\n")
		return 1

/proc/load_jobwhitelistSQL()
	var/DBQuery/query = dbcon_old.NewQuery("SELECT * FROM whitelist")
	if(!query.Execute())
		world.log << dbcon_old.ErrorMsg()
		return 0
	else
		while(query.NextRow())
			var/list/row = query.GetRowData()
			if(job_whitelist[row["ckey"]])
				var/list/J = job_whitelist[row["ckey"]]
				J.Add(row["job"])
			else
				job_whitelist[row["ckey"]] = list(row["job"])
	return 1

/proc/is_job_whitelisted(mob/M, var/rank)
	var/datum/job/job = job_master.GetJob(rank)
	if(!job.whitelisted)
		return 1
	if(check_rights(R_ADMIN, 0, M))
		return 1
	if(!job_whitelist)
		return 0
	if(M && rank)
		return whitelist_lookup(rank, M.ckey)

	return 0

/var/list/alien_whitelist = list()

/hook/startup/proc/loadAlienWhitelist()
	if(config.usealienwhitelist)
		if(config.usealienwhitelistSQL)
			if(!load_alienwhitelistSQL())
				world.log << "Could not load alienwhitelist via SQL"
		else
			load_alienwhitelist()
	return 1
/proc/load_alienwhitelist()
	var/text = file2text("config/alienwhitelist.txt")
	if (!text)
		log_misc("Failed to load config/alienwhitelist.txt")
		return 0
	else
		alien_whitelist = splittext(text, "\n")
		return 1
/proc/load_alienwhitelistSQL()
	var/DBQuery/query = dbcon_old.NewQuery("SELECT * FROM whitelist")
	if(!query.Execute())
		world.log << dbcon_old.ErrorMsg()
		return 0
	else
		while(query.NextRow())
			var/list/row = query.GetRowData()
			if(alien_whitelist[row["ckey"]])
				var/list/A = alien_whitelist[row["ckey"]]
				A.Add(row["race"])
			else
				alien_whitelist[row["ckey"]] = list(row["race"])
	return 1

/proc/is_species_whitelisted(mob/M, var/species_name)
	var/datum/species/S = all_species[species_name]
	return is_alien_whitelisted(M, S)

//todo: admin aliens
/proc/is_alien_whitelisted(mob/M, var/species)
	if(!M || !species)
		return 0
	if(!config.usealienwhitelist)
		return 1
	if(check_rights(R_ADMIN, 0, M))
		return 1

	if(istype(species,/datum/language))
		var/datum/language/L = species
		if(!(L.flags & (WHITELISTED|RESTRICTED)))
			return 1
		return whitelist_lookup(L.name, M.ckey)

	if(istype(species,/datum/species))
		var/datum/species/S = species
		if(!(S.spawn_flags & (SPECIES_IS_WHITELISTED|SPECIES_IS_RESTRICTED)))
			return 1
		return whitelist_lookup(S.get_bodytype(S), M.ckey)

	return 0

/proc/whitelist_lookup(var/item, var/ckey)
	if(!alien_whitelist)
		return 0
	if(!job_whitelist)
		return 0

	if(config.usealienwhitelistSQL)
		//SQL Whitelist
		if(!(ckey in alien_whitelist))
			return 0;
		var/list/whitelisted = alien_whitelist[ckey]
		if(lowertext(item) in whitelisted)
			return 1
	else
		//Config File Whitelist
		for(var/s in alien_whitelist)
			if(findtext(s,"[ckey] - [item]"))
				return 1
			if(findtext(s,"[ckey] - All"))
				return 1
	return 0

	if(config.usejobwhitelistSQL)
		//SQL Whitelist
		if(!(ckey in job_whitelist))
			return 0;
		var/list/whitelisted = job_whitelist[ckey]
		if(lowertext(item) in whitelisted)
			return 1
	else
		//Config File Whitelist
		for(var/s in job_whitelist)
			if(findtext(s,"[ckey] - [item]"))
				return 1
			if(findtext(s,"[ckey] - All"))
				return 1
	return 0

#undef WHITELISTFILE

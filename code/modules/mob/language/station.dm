/datum/language/diona
	name = LANGUAGE_ROOTLOCAL
	desc = "A complex language known instinctively by Dionaea, 'spoken' by emitting modulated radio waves. This version uses high frequency waves for quick communication at short ranges."
	speech_verb = "creaks and rustles"
	ask_verb = "creaks"
	exclaim_verb = "rustles"
	colour = "soghun"
	key = "q"
	flags = RESTRICTED
	syllables = list("hs","zt","kr","st","sh")
	shorthand = "RT"

/datum/language/diona/get_random_name()
	var/new_name = "[pick(list("To Sleep Beneath","Wind Over","Embrace of","Dreams of","Witnessing","To Walk Beneath","Approaching the"))]"
	new_name += " [pick(list("the Void","the Sky","Encroaching Night","Planetsong","Starsong","the Wandering Star","the Empty Day","Daybreak","Nightfall","the Rain"))]"
	return new_name

/datum/language/diona/global
	name = LANGUAGE_ROOTGLOBAL
	desc = "A complex language known instinctively by Dionaea, 'spoken' by emitting modulated radio waves. This version uses low frequency waves for slow communication at long ranges."
	key = "w"
	flags = RESTRICTED | HIVEMIND
	shorthand = "N/A"

/datum/language/unathi
	name = LANGUAGE_UNATHI
	desc = "The common language of Moghes, composed of sibilant hisses and rattles. Spoken natively by Unathi."
	speech_verb = "hisses"
	ask_verb = "hisses"
	exclaim_verb = "roars"
	colour = "soghun"
	key = "o"
	flags = WHITELISTED
	space_chance = 40
	syllables = list(
		"za", "az", "ze", "ez", "zi", "iz", "zo", "oz", "zu", "uz", "zs", "sz",
		"ha", "ah", "he", "eh", "hi", "ih", "ho", "oh", "hu", "uh", "hs", "sh",
		"la", "al", "le", "el", "li", "il", "lo", "ol", "lu", "ul", "ls", "sl",
		"ka", "ak", "ke", "ek", "ki", "ik", "ko", "ok", "ku", "uk", "ks", "sk",
		"sa", "as", "se", "es", "si", "is", "so", "os", "su", "us", "ss", "ss",
		"ra", "ar", "re", "er", "ri", "ir", "ro", "or", "ru", "ur", "rs", "sr",
		"a",  "a",  "e",  "e",  "i",  "i",  "o",  "o",  "u",  "u",  "s",  "s"
	)
	shorthand = "UT"

/datum/language/skrell
	name = LANGUAGE_SKRELLIAN
	desc = "A melodic and complex language spoken by the Skrell of Qerrbalak. Some of the notes are inaudible to humans."
	speech_verb = "warbles"
	ask_verb = "warbles"
	exclaim_verb = "warbles"
	colour = "skrell"
	key = "k"
	flags = WHITELISTED
	syllables = list("qr","qrr","xuq","qil","quum","xuqm","vol","xrim","zaoo","qu-uu","qix","qoo","zix","*","!")
	shorthand = "SK"

/datum/language/human
	name = LANGUAGE_SOL_COMMON
	desc = "A bastardized combination of English, German, French, Dutch, Japanese and Korean; the common language of the Sol system."
	speech_verb = "says"
	whisper_verb = "whispers"
	colour = "solcom"
	key = "1"
	flags = WHITELISTED
	shorthand = "SC"
	syllables = list(
		"a", "i", "u", "e", "o", "a", "o", "u", "i",
		"al", "an", "ar", "as", "at", "ea", "ed", "en", "er", "es", "ha", "he", "hi", "hi", "in", "is", "it",
		"le", "me", "nd", "ne", "ng", "nt", "on", "or", "ou", "re", "se", "st", "te", "th", "ti", "to", "ve",
		"wa", "ai", "an", "ar", "au", "ce", "ch", "co", "de", "em", "en", "er", "es", "et", "eu", "ie", "il",
		"in", "is", "it", "la", "le", "ma", "me", "ne", "ns", "nt", "on", "ou", "pa", "qu", "ra", "re", "se",
		"te", "ti", "tr", "ue", "un", "ur", "us", "ve", "an", "au", "be", "ch", "da", "de", "di", "ei", "el",
		"en", "er", "es", "ge", "he", "ht", "ic", "ie", "in", "it", "le", "li", "nd", "ne", "ng", "re", "sc",
		"se", "si", "st", "te", "un", "aa", "al", "an", "ar", "at", "be", "ch", "da", "de", "ee", "el", "en",
		"er", "et", "ge", "he", "ie", "ij", "in", "ke", "le", "me", "nd", "ng", "oe", "on", "oo", "or", "re",
		"st", "te", "va", "ve", "wa", "ze", "ka", "ki", "ku", "ke", "ko", "ta", "chi", "tsu", "te", "to",
		"sa", "shi", "su", "se", "so", "na", "ni", "nu", "ne", "no", "n", "ha", "hi", "fu", "he", "ho", "ma",
		"mi", "mu", "me", "mo", "ya", "yu", "yo", "ra", "ri", "ru", "re", "ro", "wa", "wo", "ga", "na", "da",
		"ra", "ma", "ba", "sa", "ja", "ka", "ta", "pa", "ha", "eo", "go", "no", "do", "ro", "mo", "bo", "so",
		"jo", "po", "ho", "yo", "gu", "nu", "du", "ru", "mu", "bu", "su", "ju", "ku", "tu", "pu", "hu", "eu",
		"gi", "ni", "di", "ri", "mi", "bi", "si", "ji", "ki", "ta", "pi", "hi", "ae",
		"all", "and", "are", "but", "ent", "era", "ere", "eve", "for", "had", "hat", "hen", "her", "hin", "his",
		"ing", "ion", "ith", "not", "ome", "oul", "our", "sho", "ted", "ter", "tha", "the", "thi", "tio", "uld",
		"ver", "was", "wit", "you", "ain", "ais", "ait", "ans", "ant", "ati", "ava", "ave", "cha", "che", "com",
		"con", "dan", "des", "ell", "eme", "ent", "ent", "est", "eur", "eux", "fai", "ien", "ion", "ire", "les",
		"lle", "lus", "mai", "men", "men", "mme", "nte", "omm", "ont", "our", "ous", "out", "ouv", "par", "pas",
		"plu", "pou", "que", "res", "son", "sur", "tai", "tio", "tou", "tre", "une", "ure", "ver", "vou", "éta",
		"abe", "ach", "and", "auf", "aus", "ben", "ber", "che", "cht", "das", "den", "der", "die", "ein", "eit",
		"end", "ere", "ers", "ese", "gen", "hen", "ich", "ige", "ine", "ist", "lic", "lle", "men", "mit", "nde",
		"nen", "nge", "nic", "nte", "ren", "sch", "sei", "sen", "sic", "sie", "ste", "ten", "ter", "und", "und",
		"ver", "aan", "aar", "ach", "als", "and", "cht", "dat", "den", "der", "ede", "een", "eer", "eli", "end",
		"erd", "ere", "ers", "gen", "haa", "het", "hij", "iet", "ijk", "ijn", "ing", "ken", "lij", "lle", "maa",
		"men", "met", "nde", "nen", "nge", "nie", "ond", "oor", "rde", "ren", "sch", "ste", "ten", "ter", "uit",
		"van", "ver", "voo", "was", "zij","cha", "gya", "nya", "dya", "rya", "mya", "bya", "sya", "ya", "jya",
		"chya", "kya", "tya", "pya", "hya", "geo", "neo", "deo", "reo", "meo", "beo", "seo", "jeo", "cheo", "keo",
		"keo", "teo", "peo", "hya", "gyeo", "nyeo", "dyeo", "ryeo", "myeo", "byeo", "syeo", "yeo", "yeo", "jyeo",
		"chyeo", "kyeo", "tyeo", "pyeo", "hyeo",  "cho", "ko", "to", "gyo", "nyo", "dyo", "ryo", "myo", "byo", "sya",
		"jyo", "chyo", "kyo", "tyo", "pyo", "hyo", "chu", "gyu", "nyu", "dyu", "ryu", "myu", "byu", "syu",
		"yu", "jyu", "chyu", "kyu", "tyu", "pyu", "hyu", "geu", "neu", "deu", "reu", "meu", "beu", "seu", "jeu", "cheu",
		"keu", "teu", "peu", "heu", "chi", "gae", "nae", "dae", "rae", "mae", "bae", "sae", "jae", "chae", "kae", "tae",
		"pae", "hae"
		)

/datum/language/human/get_spoken_verb(var/msg_end)
	switch(msg_end)
		if("!")
			return pick("exclaims","shouts","yells") //TODO: make the basic proc handle lists of verbs.
		if("?")
			return ask_verb
	return speech_verb

/datum/language/human/get_random_name(var/gender)
	if (prob(80))
		if(gender==FEMALE)
			return capitalize(pick(GLOB.first_names_female)) + " " + capitalize(pick(GLOB.last_names))
		else
			return capitalize(pick(GLOB.first_names_male)) + " " + capitalize(pick(GLOB.last_names))
	else
		return ..()

/datum/language/machine
	name = LANGUAGE_EAL
	desc = "An efficient language of encoded tones developed by synthetics and cyborgs."
	speech_verb = "whistles"
	ask_verb = "chirps"
	exclaim_verb = "whistles loudly"
	colour = "changeling"
	key = "6"
	flags = NO_STUTTER
	syllables = list("beep","beep","beep","beep","beep","boop","boop","boop","bop","bop","dee","dee","doo","doo","hiss","hss","buzz","buzz","bzz","ksssh","keey","wurr","wahh","tzzz")
	space_chance = 10
	shorthand = "EAL"

/datum/language/machine/can_speak_special(var/mob/living/speaker)
	return speaker.isSynthetic()

/datum/language/machine/get_random_name()
	if(prob(70))
		return "[pick(list("PBU","HIU","SINA","ARMA","OSI"))]-[rand(100, 999)]"
	return pick(GLOB.ai_names)

/datum/language/frontier
	name = LANGUAGE_FRONTIER_BASIC
	desc = "The official language of the Frontier Federation, a pidgin language of English, Norewigian, Swedish and French"
	colour = "frontier"
	key = "r"
	shorthand = "FB"
	syllables = list(
		"al", "an", "ar", "as", "at", "ea", "ed", "en", "er", "es", "ha", "he", "hi", "in", "is", "it", "le",
		"me", "nd", "ne", "ng", "nt", "on", "or", "ou", "re", "se", "st", "te", "th", "ti", "to", "ve", "wa",
		"an", "ar", "de", "ed", "eg", "el", "en", "er", "et", "fo", "ge", "ha", "ig", "ik", "il", "in", "je",
		"ke", "kk", "le", "li", "me", "ne", "ng", "nn", "og", "om", "or", "re", "se", "st", "te", "ti", "tt",
		"ve", "ad", "an", "ar", "at", "ch", "de", "en", "er", "et", "fö", "ge", "ha", "ig", "in", "ka", "la",
		"li", "ll", "me", "na", "nd", "ng", "oc", "om", "or", "ra", "re", "sk", "st", "ta", "te", "ti", "tt",
		"va", "är", "ör", "ai", "an", "ar", "au", "ce", "ch", "co", "de", "em", "en", "er", "es", "et", "eu",
		"ie", "il", "in", "is", "it", "la", "le", "ma", "me", "ne", "ns", "nt", "on", "ou", "pa", "qu", "ra",
		"re", "se", "te", "ti", "tr", "ue", "un", "ur", "us", "ve",
		"all", "and", "are", "but", "ent", "era", "ere", "eve", "for", "had", "hat", "hen", "her", "hin", "his",
		"ing", "ion", "ith", "not", "ome", "oul", "sho", "ted", "ter", "tha", "the", "thi", "tio", "uld", "ver",
		"was", "wit", "you", "all", "ans", "are", "dde", "den", "der", "det", "ell", "end", "ene", "enn", "ent",
		"ere", "ett", "for", "gen", "had", "han", "hen", "ikk", "ing", "itt", "jeg", "kan", "kke", "ler", "lig",
		"lle", "med", "men", "mme", "nde", "nge", "nne", "ren", "som", "ste", "ten", "ten", "ter", "til", "tte",
		"var", "ver", "vis", "ade", "all", "and", "ans", "ara", "att", "den", "der", "det", "era", "ett", "för",
		"gen", "han", "ill", "ing", "int", "jag", "kan", "lig", "lla", "lle", "med", "men", "nde", "nge", "nin",
		"nne", "nte", "och", "sam", "som", "sta", "ste", "ter", "til", "tta", "var", "ver", "ain", "ais", "ait",
		"ans", "ant", "ati", "ava", "ave", "cha", "che", "com", "con", "dan", "des", "ell", "eme", "ent", "est",
		"eur", "eux", "fai", "ien", "ion", "ire", "les", "lle", "lus", "mai", "men", "mme", "nte", "omm", "ont",
		"our", "ous", "out", "ouv", "par", "pas", "plu", "pou", "que", "res", "son", "sur", "tai", "tio", "tou",
		"tre", "une", "ure", "ver", "vou", "éta"
		)

/datum/language/union
	name = LANGUAGE_UNION_STANDARD
	desc = "The state mandated language of the Pan-Asian Union a mixture of primarily Russian and Mandarin."
	colour = "union"
	key = "u"
	shorthand = "UN"
	syllables = list(
		"a", "ai", "an", "ang", "ao", "ba", "bai", "ban", "bang", "bao", "bei", "ben", "beng", "bi", "bian", "biao",
"bie", "bin", "bing",
		"bo", "bu", "ca", "cai", "can", "cang", "cao", "ce", "cei", "cen", "ceng", "cha", "chai",
"chan", "chang", "chao", "che", "chen",
		"cheng", "chi", "chong", "chou", "chu", "chua", "chuai", "chuan", "chuang", "chui", "chun",
"chuo", "ci", "cong", "cou", "cu", "cuan",
		"cui", "cun", "cuo", "da", "dai", "dan", "dang", "dao", "de", "dei",
"den", "deng", "di", "dian", "diao", "die", "ding", "diu", "dong",
		"dou", "du", "duan", "dui", "dun", "duo", "e",
"ei", "en", "er", "fa", "fan", "fang", "fei", "fen", "feng", "fo", "fou", "fu", "ga", "gai",
		"gan", "gang",
"gao", "ge", "gei", "gen", "geng", "gong", "gou", "gu", "gua", "guai", "guan", "guang", "gui", "gun", "guo", "ha",
"hai", "han",
		"hang", "hao", "he", "hei", "hen", "heng", "hm", "hng", "hong", "hou", "hu", "hua", "huai", "huan",
"huang", "hui", "hun", "huo", "ji", "jia",
		"jian", "jiang", "jiao", "jie", "jin", "jing", "jiong", "jiu", "ju", "juan",
"jue", "jun", "ka", "kai", "kan", "kang", "kao", "ke", "kei",
		"ken", "keng", "kong", "kou", "ku", "kua", "kuai", 	"kuan", "kuang", "kui", "kun", "kuo", "la", "lai", "lan", "lang", "lao", "le", "lei",
		"leng", "li", "lia", "lian",
"liang", "liao", "lie", "lin", "ling", "liu", "long", "lou", "lu", "luan", "lun", "luo", "ma", "mai", "man",
		"mang",
"mao", "me", "mei", "men", "meng", "mi", "mian", "miao", "mie", "min", "ming", "miu", "mo", "mou", "mu", "na",
"nai", "nan", "nang",
		"nao", "ne", "nei", "nen", "neng", "ng", "ni", "nian", "niang", "niao", "nie", "nin", "ning",
"niu", "nong", "nou", "nu", "nuan", "nuo",
		"o", "ou", "pa", "pai", "pan", "pang", "pao", "pei", "pen", "peng",
"pi", "pian", "piao", "pie", "pin", "ping", "po", "pou", "pu", "qi",
		"qia", "qian", "qiang", "qiao", "qie", "qin",
"qing", "qiong", "qiu", "qu", "quan", "que", "qun", "ran", "rang", "rao", "re", "ren", "reng",
		"ri", "rong", "rou",
"ru", "rua", "ruan", "rui", "run", "ruo", "sa", "sai", "san", "sang", "sao", "se", "sei", "sen", "seng", "sha",
"shai",
		"shan", "shang", "shao", "she", "shei", "shen", "sheng", "shi", "shou", "shu", "shua", "shuai", "shuan", "shuang", "shui",
"shun", "shuo", "si",
		"song", "sou", "su", "suan", "sui", "sun", "suo", "ta", "tai", "tan", "tang", "tao", "te",
"teng", "ti", "tian", "tiao", "tie", "ting", "tong",
		"tou", "tu", "tuan", "tui", "tun", "tuo", "wa", "wai", "wan",
"wang", "wei", "wen", "weng", "wo", "wu", "xi", "xia", "xian", "xiang", "xiao", "xie",
		"xin", "xing", "xiong", "xiu",
"xu", "xuan", "xue", "xun", "ya", "yan", "yang", "yao", "ye", "yi", "yin", "ying", "yong", "you", "yu", "yuan",
"yue",
		"yun", "za", "zai", "zan", "zang", "zao", "ze", "zei", "zen", "zeng", "zha", "zhai", "zhan", "zhang", "zhao",
"zhe", "zhei", "zhen", "zheng", "zhi",
		"zhong", "zhou", "zhu", "zhua", "zhuai", "zhuan", "zhuang", "zhui", "zhun", "zhuo", "zi",
"zong", "zou", "zuan", "zui", "zun", "zuo", "zu",
		"al", "an", "by", "ve", "vo", "go", "de", "el", "en", "er", "et", "ka", "ko", "la", "li", "lo", "l'", "na", "ne", "ni", "no", "ov", "ol", "on",
		"or", "os", "ot", "po", "pr", "ra", "re", "ro", "st", "ta", "te", "to", "t'", "at'", "byl", "ver", "egr", "eni", "est", "kak", "l'n", "oba", "ogo",
		"ol'", "oro", "ost", "oto", "pri", "pro", "sta", "stv", "tor", "chto", "ehto",
		"al", "an", "by", "ve", "vo", "go", "de", "el", "en", "er", "et", "ka", "ko", "la", "li", "lo", "l'", "na", "ne", "ni", "no", "ov", "ol", "on",
		"or", "os", "ot", "po", "pr", "ra", "re", "ro", "st", "ta", "te", "to", "t'", "at'", "byl", "ver", "egr", "eni", "est", "kak", "l'n", "oba", "ogo",
		"ol'", "oro", "ost", "oto", "pri", "pro", "sta", "stv", "tor", "chto", "ehto",
		"al", "an", "by", "ve", "vo", "go", "de", "el", "en", "er", "et", "ka", "ko", "la", "li", "lo", "l'", "na", "ne", "ni", "no", "ov", "ol", "on",
		"or", "os", "ot", "po", "pr", "ra", "re", "ro", "st", "ta", "te", "to", "t'", "at'", "byl", "ver", "egr", "eni", "est", "kak", "l'n", "oba", "ogo",
		"ol'", "oro", "ost", "oto", "pri", "pro", "sta", "stv", "tor", "chto", "ehto",
		"al", "an", "by", "ve", "vo", "go", "de", "el", "en", "er", "et", "ka", "ko", "la", "li", "lo", "l'", "na", "ne", "ni", "no", "ov", "ol", "on",
		"or", "os", "ot", "po", "pr", "ra", "re", "ro", "st", "ta", "te", "to", "t'", "at'", "byl", "ver", "egr", "eni", "est", "kak", "l'n", "oba", "ogo",
		"ol'", "oro", "ost", "oto", "pri", "pro", "sta", "stv", "tor", "chto", "ehto",
		"al", "an", "by", "ve", "vo", "go", "de", "el", "en", "er", "et", "ka", "ko", "la", "li", "lo", "l'", "na", "ne", "ni", "no", "ov", "ol", "on",
		"or", "os", "ot", "po", "pr", "ra", "re", "ro", "st", "ta", "te", "to", "t'", "at'", "byl", "ver", "egr", "eni", "est", "kak", "l'n", "oba", "ogo",
		"ol'", "oro", "ost", "oto", "pri", "pro", "sta", "stv", "tor", "chto", "ehto",
		"al", "an", "by", "ve", "vo", "go", "de", "el", "en", "er", "et", "ka", "ko", "la", "li", "lo", "l'", "na", "ne", "ni", "no", "ov", "ol", "on",
		"or", "os", "ot", "po", "pr", "ra", "re", "ro", "st", "ta", "te", "to", "t'", "at'", "byl", "ver", "egr", "eni", "est", "kak", "l'n", "oba", "ogo",
		"ol'", "oro", "ost", "oto", "pri", "pro", "sta", "stv", "tor", "chto", "ehto"
		)

/datum/language/nabber
	name = LANGUAGE_NABBER
	desc = "A strange language that can be understood both by the sounds made and by the movement needed to create those sounds."
	signlang_verb = list("chitters", "grinds its mouthparts", "chitters and grinds its mouthparts")
	key = "n"
	flags = WHITELISTED | SIGNLANG | NO_STUTTER | NONVERBAL
	colour = ".nabber_lang"
	shorthand = "SD"

/datum/language/nabber/get_random_name(var/gender)
	if(gender == FEMALE)
		return capitalize(pick(GLOB.first_names_female))
	else
		return capitalize(pick(GLOB.first_names_male))

/*
/datum/language/spacer
	name = LANGUAGE_SPACER
	desc = "A pidgin language spoken by haulers, merchants, traders, travellers, and cocky fly-boys across the galaxy."
	colour = "spacer"
	key = "v"
	syllables = list ("die", "en", "skei", "van", "son", "der", "aar", "ch", "op", "ruk", "aa", "be", "ne", "het",
 	"ek", "ras", "ver", "zan", "das", "waa", "geb", "vol", "lu", "min", "breh", "rus", "stv", "ee", "goe", "sk",
 	"la", "ver", "we", "ge", "luk", "an", "ar", "at", "es", "et", "bel", "du", "jaa", "ch", "kk", "gh", "ll", "uu", "wat")
	shorthand = "SP"
*/

/datum/language/yeosa
	name = LANGUAGE_YEOSA
	desc = "A language of Moghes consisting of a combination of spoken word and gesticulation. While it is uncommonly spoken in the drier regions, it enjoys popular usage as the official tongue of the Yeosa clans."
	speech_verb = "hisses"
	ask_verb = "rattles"
	exclaim_verb = "barks"
	colour = "yeosa"
	key = "h"
	flags = WHITELISTED
	space_chance = 40
	syllables = list(
		"azs","zis","zau","azua","skiu","zuakz","izo","aei","ki","kut","zo",
		"za", "az", "ze", "ez", "zi", "iz", "zo", "oz", "zu", "uz", "zs", "sz",
		"ha", "ah", "he", "eh", "hi", "ih", "ho", "oh", "hu", "uh", "hs", "sh",
		"la", "al", "le", "el", "li", "il", "lo", "ol", "lu", "ul", "ls", "sl",
		"ka", "ak", "ke", "ek", "ki", "ik", "ko", "ok", "ku", "uk", "ks", "sk",
		"sa", "as", "se", "es", "si", "is", "so", "os", "su", "us", "ss", "ss",
		"ra", "ar", "re", "er", "ri", "ir", "ro", "or", "ru", "ur", "rs", "sr",
		"a",  "a",  "e",  "e",  "i",  "i",  "o",  "o",  "u",  "u",  "s",  "s"
	)
	shorthand = "YU"
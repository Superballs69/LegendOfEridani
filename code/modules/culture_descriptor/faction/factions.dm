/decl/cultural_info/faction/ssa
	name = FACTION_SOL_ALLIANCE
	description = "The Solar Systems Alliance, commonly known as the Alliance or the Systems Alliance, is an intergovernmental power consisting of \
	member states of the now defunct United Nations and their respective colonies outside the Solar System with the goal of organizing, uniting and representing \
	the human race as a whole in the Milky Way Galaxy. Intergallatically recognized as the official representative country of the human race. Engaged in a Cold War with the \
	Frontier Federation and as a result of poor management and Frontier patriotism has consequently a weak grip on outer colonies. With the reliance on rare materials, the hunger of the SSA \
	is slowly caving in on itself."
	language = LANGUAGE_SOL_COMMON

/decl/cultural_info/faction/ff
	name = FACTION_FRONTIER_FED
	description = "The Frontier Federation, commonly referred to as the Federation, is a regional power in human space,\
	bordering the Solar Systems Alliance. Grown out of the result of the SSA's resource exploitation and harsh ruling, the Frontier Federation \
	through a successful propaganda and psychological victory has managed to gain public sympathy, with many SSA governments and subsidies turning side. With the \
	advantage of plenty resources, manpower and public support the Frontier Federation has grown to be more than a thorn to the SSA's side."
	economic_power = 0.9
	subversive_potential = 50
	language = LANGUAGE_INDEPENDENT

/decl/cultural_info/faction/etf
	name = FACTION_ERIDANI_FED
	description = "The Eridani Trade Federation, is a special administrative region within the Solar Systems Alliance's Epsilon Eridani system. A fully autonomous government \
	with many governmental duties and services ran by corporations holding seats in the Board of Directors through amount of market shares and holdings. An experimental corporatocracy that \
	provides the ideal environment for mercantilism and capitalism, and is the most wealthiest region of known space in the Milky Way. The current administrative leader is Dr. Aito Kusanagi Ph.D."
	language = LANGUAGE_GALCOM
	secondary_langs = list(LANGUAGE_SOL_COMMON)

/decl/cultural_info/faction/remote/nanotrasen
	name = FACTION_NANOTRASEN
	description = "The NanoTrasen Corporation, commonly referred to as NT, is one of the great megacorporations of the modern day.\
	Currently headquartered in New Amsterdam on Luna and headed by CEO Jackson Trasen It deals in research of the most advanced sciences, \
	such as genetics, blue space, and - recently - the uses of phoron, as well as mass consumer manufacturing on a truly galactic scale. \
	They also have a sizeable asset protection and security branch with which they secure both investments and occasionally new acquisitions \
	- a distressing rival to some minor star systems, and a powerful administrative branch sitting atop it all, directing their company's actions. \
	NanoTrasen is characterized by its aggression and questionable ethics, which, combined with the high emphasis they put on new, untested and dangerous \
	technology, means their installations are often considered unsafe and hazardous."
	economic_power = 1.2
	subversive_potential = 15

/decl/cultural_info/faction/remote/kdi
	name = FACTION_KDI
	description = "KDI, or Kusanagi Defense Industries is one of the largest defense contractors across known space. An Earth based zaibatsu founded by CEO Aito Kusanagi, the company has produced \
	an extensive and well-renowned line of small-arms, composite armor systems and communication devices. Through massive amounts of capital and product successes, the company holds the majority \
	of seats in the Board of Directors and represents the ETF as a whole. It is the major investor of the Arcturus-Eclipse Project. The company is critized heavily with accusations of war-profiteering, influencing governments and extreme \
	corporate espionage."
	economic_power = 2.0
	subversive_potential = 15

/decl/cultural_info/faction/remote/hephaestus
	name = FACTION_HEPHAESTUS
	description = "Hephaestus Industries, known simply as Hephaestus, is one of the largest corporations in existence today. \
	The leading manufacturer of military grade personal weapons, assault vehicles, defence systems and security measures, \
	Hephaestus has a somewhat controversial reputation as a result of blatant war profiteering, compounded by their attempts to \
	exploit Unathi equipment and assets for their own gains. In spite of this, Hephaestus maintains a reputation for the quality and \
	reliability of its equipment as well as its general affordability. Internally, Hephaestus is a desirable employer as a result of its \
	many employee benefits and focus on employee development, though many dread being transferred to one of the 'remote' branches."
	economic_power = 1.2
	subversive_potential = 15
	language = LANGUAGE_SOL_COMMON
	secondary_langs = list(LANGUAGE_SIGN, LANGUAGE_GALCOM)

/decl/cultural_info/faction/free
	name = FACTION_FREETRADE
	description = "The Free Trade Union, commonly referred to as the FTU, is is an employee-owned conglomerate of tens of thousands of \
	various traders and merchants from all over SCG space and beyond. Colloquially known as the 'fifth megacorp', they control a sizeable fleet \
	of trading ships which are form the backbone of their trading force along with a large contingent of combat capable vessels that cruise the shipping lanes, \
	keeping FTU members free from pirates. The FTU has a large amount of economic power across Sol space and operates large trade hubs and stations near most \
	Gateway installations and planets. Somewhat unscrupulous, FTU stations and merchants are known for \
	selling a great many restricted items and supplying all manner of goods indiscriminately."
	economic_power = 1.3
	subversive_potential = 15
	language = LANGUAGE_SPACER

/decl/cultural_info/faction/pcrc
	name = FACTION_PCRC
	description = "Proxima Centauri Risk Control, often known as PCRC, is one of the largest suppliers of private security in Sol Space. \
	PCRC handles numerous government, private and corporate contracts and provides a variety of services ranging from private law enforcement, \
	security, close protection, asset protection, search and rescue and peacekeeping and escort duties. A relatively quiet and new company, \
	it has quickly established itself as a reliable and effective provider of security solutions. This has often put it at odds with its main \
	competitor, SAARE."
	subversive_potential = 15
	language = LANGUAGE_SPACER
	secondary_langs = list(LANGUAGE_GALCOM, LANGUAGE_SOL_COMMON)

/decl/cultural_info/faction/dais
	name = FACTION_DAIS
	description = "Deimos Advanced Information Systems (DAIS) is a large corporation specializing in information technology such as computer hardware \
	and software, telecommunications equipment, and networking equipment based on Mars. It is the number one supplier of computer technology in The Sol Central \
	 Government, its systems used by most consumers and businesses within SolGov. DAIS is actually older than the Sol Central Government and is one of the very \
	few corporate members of the Solar Assembly. DAIS is also a major investor in the Torch project, and is on the Expeditionary Corps Organization board of directors. \
	Currently DAIS is invested in bluespace computing research and artificial intelligence research. Despite recent intrusions by NanoTrasen into their sector with NTNet \
	and related products, they still remain the market leader in computer technologies."
	economic_power = 1.1
	subversive_potential = 15
	language = LANGUAGE_SOL_COMMON

/decl/cultural_info/faction/other
	name = FACTION_OTHER
	description = "You belong to one of the many other factions that operate in the galaxy. Numerous, too numerous to list, these factions represent a variety of interests, purposes, intents and goals."
	subversive_potential = 25
	language = LANGUAGE_GALCOM

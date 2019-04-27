/obj/item/weapon/book/manual/solgov_law
	name = "Solar Systems Alliance Law"
	desc = "A brief overview of SSA Law."
	icon_state = "bookSolGovLaw"
	author = "The Solar Systems Alliance"
	title = "Solar Systems Alliance Law"

/obj/item/weapon/book/manual/solgov_law/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="https://eridanistation.com/wiki/index.php/Station_Regulations" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}


/obj/item/weapon/book/manual/military_law
	name = "The Grand Military Code of Justice"
	desc = "A brief overview of military law."
	icon_state = "bookSolGovLaw"
	author = "The Solar Systems Alliance"
	title = "The Grand Military Code of Justice"

/obj/item/weapon/book/manual/military_law/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="https://eridanistation.com/wiki/index.php/Station_Regulations" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}

/obj/item/weapon/book/manual/sol_sop
	name = "Standard Operating Procedure"
	desc = "SOP aboard the EEV Eclipse."
	icon_state = "booksolregs"
	author = "The Eridani Trade Federation"
	title = "Standard Operating Procedure"

/obj/item/weapon/book/manual/sol_sop/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="https://eridanistation.com/wiki/index.php/Standard_Operating_Procedures" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}

/obj/item/weapon/folder/nt/rd

/obj/item/weapon/folder/envelope/blanks
	desc = "A thick envelope. A large logo is stamped in the corner, along with 'CONFIDENTIAL'."

/obj/item/weapon/folder/envelope/blanks/Initialize()
	. = ..()
	new/obj/item/weapon/paper/blanks(src)

/obj/item/weapon/paper/blanks
	name = "RE: Regarding testing supplies"
	info = {"
	<tt><center><b><font color='red'>CONFIDENTIAL: UPPER MANAGEMENT ONLY</font></b>
	<h3>CORPORATE RESEARCH DIVISION</h3>
	<img src = fcalogo.png>
	</center>
	<b>FROM:</b> Hieronimus Blackstone, Overseer of Arcturus-Eclipse Project<br>
	<b>TO:</b> Research Director of EEV Eclipse branch<br>
	<b>CC:</b> Liason with Corporate services aboard EEV Eclipse<br>
	<b>SUBJECT:</b> RE: Testing Materials<br>
	<hr>
	We have reviewed your request, and would like to make an addition to the list of needed materials.<br>
	As we hold very high hopes for this branch, it would be only right to provide our scientists with the most accurate testing environment. And by that we mean the living human subjects. Our Ethics Review Board suggested a workaround for that pesky 'consent' requierment.<br>
	In the Research Wing you should find a small section labeled 'Aux Custodial Supplies'. Inside we have provided several mind-blank vatgrown clones. Our Law Special Response Team so far had not found SSA legislation that explicitly forbids their use in research.<br>
	They come in self-contained life support bags, with additional measures to make them easier to use for, let's say, more sensitive personnel. As our preliminary study showed, 75% more subjects were more willing to harm a (consenting) intern if their face was fully hidden.<br>
	We are expecting great results from this program. Do not disappoint us.<br>
	<i>H.B.</i></tt>
	"}

/obj/item/weapon/paper/liason_note
	name = "note"
	info = {"
	<i>Pick your way out.<br>
	H.B.</i>
	"}

/obj/item/weapon/folder/envelope/captain
	desc = "A thick envelope. The ETF crest is stamped in the corner, along with 'TOP SECRET - ECLIPSE UMBRA'."

/obj/item/weapon/folder/envelope/captain/Initialize()
	. = ..()
	var/obj/effect/overmap/eclipse = map_sectors["[z]"]
	var/memo = {"
	<tt><center><b><font color='red'>SECRET - CODE WORDS: ECLIPSE</font></b>
	<h3>ERIDANI TRADE FEDERATION - FEDERAL CONTROL AGENCY</h3>
	<img src = fcalogo.png>
	</center>
	<b>FROM:</b> Director Gunther von Pargner<br>
	<b>TO:</b> Commanding Officer of EEV Eclipse<br>
	<b>SUBJECT:</b> Standing Orders<br>
	<hr>
	Captain.<br>
	Your orders are to visit the following star systems. Keep in mind that your supplies are limited; ration exploration time accordingly.
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[GLOB.using_map.system_name]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<br>
	Priority targets are artifacts of uncontacted alien species and signal sources of unknown origin.<br>
	None of these systems are claimed by any entity recognized by any state, so you have full salvage rights on any derelicts discovered.<br>
	Investigate and mark any prospective colony worlds as per usual procedures.<br>
	There is no SSA or ETF presence in that area. In case of distress calls, you will be the only vessel available; do not ignore them.<br>
	The current docking code is: [eclipse.docking_codes]<br>
	Report all findings via quantum comm buoys during inter-system jumps.<br>

	<i>Director von Pargner.</i></tt>
	<i>This paper has been stamped with the stamp of the Federal Control Agency.</i>
	"}
	new/obj/item/weapon/paper(src, memo, "Standing Orders")

	new/obj/item/weapon/paper/umbra(src)

/obj/item/weapon/folder/envelope/rep
	desc = "A thick envelope. The FCA crest is stamped in the corner, along with 'TOP SECRET - UMBRA'."

/obj/item/weapon/folder/envelope/rep/Initialize()
	. = ..()
	new/obj/item/weapon/paper/umbra(src)

/obj/item/weapon/paper/umbra
	name = "UMBRA Protocol"
	info = {"
	<tt><center><b><font color='red'>TOP SECRET - CODE WORDS: ECLIPSE UMBRA</font></b>
	<h3>OFFICE OF THE HEAD OF BOARD OF DIRECTORS</h3>
	<img src = fcalogo.png>
	</center>
	<b>FROM:</b> Aito Kusanagi, Head of the Board of Directors<br>
	<b>TO:</b> Commanding Officer of the EEV Eclipse<br>
	<b>CC:</b> Special Representative aboard the EEV Eclipse<br>
	<b>SUBJECT:</b> UMBRA protocol<br>
	<hr>
	This is a small addendum to the usual operating procedures. Unlike the rest of SOP, this is not left to the Captain's discretion and is mandatory. As unconventional as this is, we felt it is essential for smooth operation of this mission.<br>
	Procedure can be initiated only by transmission from SSA Naval Command via secure channel. The sender may not introduce themselves, but you shouldn't have trouble confirming the transmission source, I believe.<br>
	The signal to initiate the procedure are codewords 'GOOD NIGHT WORLD' used in this order as one phrase. You do not need to send acknowledgement.
	<li>Information about this expedition's findings is to be treated as secret and vital to FCA's national security, and is protected under codeword UMBRA. Only FCA employees aboard the EEV Eclipse are allowed access to this information on a need-to-know basis.</li>
	<li>The secrecy of this information is to be applied retroactively. Any non-cleared personnel who were exposed to such information are to be secured and transferred to DIA on arrival at home port.</li>
	<li>Any devices capable of transmitting data on interstellar range are to be confiscated from private possession.</li>
	<li>Disregard any systems remaining in your flight plan and set course for Sol, Neptune orbit. You will be contacted upon your arrival. Do not make stops in ports on the way unless absolutely necessary.</li>
	<br>
	While drastic, I assure you this is a simple precaution, lest any issues. Just keep the option open, and carry on with your normal duties.
	<i>Regards, Aito.</i></tt>
	<i>This paper has been stamped with the stamp of Office of the General Board of Directors of the ETF.</i>
	"}

/obj/item/weapon/folder/envelope/protocol_e
	desc = "A thick envelope. A large FCA logo is stamped in the corner, along with 'TOP SECRET'."
	icon_state = "fca_envelope_sealed"

/obj/item/weapon/folder/envelope/protocol_e/Initialize()
	. = ..()
	new/obj/item/weapon/paper/prot_e(src)


/obj/item/weapon/folder/envelope/protocol_e/on_update_icon()
	if(sealed)
		icon_state = "fca_envelope_sealed"
	else
		icon_state = "fca_envelope[contents.len > 0]"

/obj/item/weapon/paper/prot_e
	name = "Protocol E"
	info = {"
	<tt><center><b><font color='red'>PROTOCOL E - TOP SECRET</font></b>
	<h3>ERIDANI TRADE FEDERATION - FEDERAL CONTROL AGENCY</h3>
	<img src = fcalogo.png>
	</center>
	<b>FROM:</b> Director Gunther von Pargner<br>
	<b>TO:</b> All direct agents of the Federal Control Agency<br>
	<b>SUBJECT:</b> Protocol E<br>
	<hr>
	Agents.<br>

	After the recent actions of the SSA, and a lack of proper reaction, Protocol E. has been initiated by <br>
	The high members of the Senate, General Frederic Villepier, and Myself. From now on, we do not answer to the SSA <br>
	under any form. We will now require a full inspections of every staff or crew members' records of your assigned facilities. <br>
	A records of staff/crew members which met the following criterias must be recorded, and sent as soon as possible to the main agency: <br>
	<li>Current Citizens or Residents of the SSA and SSA Controlled space. </li>
	<li>Members with any political affiliation with the SSA. </li>
	<li>Members with any military, police, law enforcements or Private Military Contract records in affiliation with the SSA. <br>
	<br>
	We would also like to remind you that we now have our own military forces, and do not require any military assistance from the SSA. <br>
	<br>
	<i>Director von Pargner.</i></tt>
	<i>This paper has been stamped with the stamp of the Federal Control Agency.</i>
	"}
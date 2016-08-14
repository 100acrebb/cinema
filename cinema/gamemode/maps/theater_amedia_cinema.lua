hook.Add( "InitPostEntity", "theater_amedia_cinema", function()
if !Location then return end

ChairOffsets = {
	["models/sunabouzu/lobby_chair.mdl"] = {
		{ Pos = Vector(5.2, 0, 34.1), Ang = Angle(0, 0, 0) }
	},
	
	["models/gmod_tower/theater_seat.mdl"] = {
		{ Pos = Vector(1, -5, 23), Ang = Angle(10, 180, 0) }
	},
	
	["models/sunabouzu/theater_curve_couch.mdl"] = {
		{ Pos = Vector(-73.6, 17.3, 18.8), Ang = Angle(0, -128, 0) },
		{ Pos = Vector(-65.2, 50.3, 18.8), Ang = Angle(0, -128, 0) },
		{ Pos = Vector(-37.5, 71.7, 18.8), Ang = Angle(0, -153, 0) },
		{ Pos = Vector(0, 80, 18.8), Ang = Angle(0, -180, 0) },
		{ Pos = Vector(37.5, 71.7, 18.8), Ang = Angle(0, 153, 0) },
		{ Pos = Vector(65.2, 50.3, 18.8), Ang = Angle(0, 128, 0) },
		{ Pos = Vector(73.6, 17.3, 18.8), Ang = Angle(0, 128, 0) },
	},
	
	["models/sunabouzu/theater_sofa01.mdl"] = {
		{ Pos = Vector(-16.8, -0.9, 16.2), Ang = Angle(0, -180, 0) },
		{ Pos = Vector(16.8, -0.9, 16.2), Ang = Angle(0, -180, 0) },
	},
	
	["models/props_trainstation/traincar_seats001.mdl"] = {
		{ Pos = Vector(4.6150, 41.7277, 18.5313) },
		{ Pos = Vector(4.7320, 14.4948, 18.5313) },
		{ Pos = Vector(4.5561, -13.3913, 18.5313) },
		{ Pos = Vector(5.4507, -40.9903, 18.5313) },
	},
	
	["models/props_warehouse/office_furniture_couch.mdl"] = {
		{ Pos = Vector(4.6150, 36, -4) },
		{ Pos = Vector(4.7320, 0, -4) },
		{ Pos = Vector(5.4507, -36, -4) },
	},
	
	["models/props_warehouse/office_furniture_couch.mdl"] = {
		{ Pos = Vector(4.6150, 36, -4) },
		{ Pos = Vector(4.7320, 0, -4) },
		{ Pos = Vector(5.4507, -36, -4) },
	},
	
	["models/props_c17/furniturechair001a.mdl"] = {
		{ Pos = Vector(0.30538135766983, 0.14535087347031, -6.69970703125) },
	},
	
	["models/props_combine/breenchair.mdl"] = {
		{ Pos = Vector(6.8169813156128, -2.8282260894775, 16.551658630371) },
	},

	["models/z-o-m-b-i-e/cod4/cod4_unitaz_01.mdl"] = {
		{ Pos = Vector(5, 0, 13), Ang = Angle(0, 270, 0) }
	},	
	
	["models/agency/chairs/cafechair.mdl"] = {
		{ Pos = Vector(0, 0, 15), Ang = Angle(0, 90, 0) }
	},
}

Location.Add( "theater_amedia_cinema", {

[ "Lobby" ] =
{
	Min = Vector( -508.54968261719, -562.91180419922, 60.749244689941 ),
	Max = Vector( 635.90209960938, 508.93923950195, 596.2626953125 ),
},

[ "Cafe" ] =
{
	Min = Vector( 156.53549194336, 538.04174804688, 49.036796569824 ),
	Max = Vector( 709.94879150391, 1099.6566162109, 238.53958129883 ),
},

[ "Public Theaters Hallway " ] =
{
	Min = Vector( -136.41831970215, 522.89788818359, 33.575016021729 ),
	Max = Vector( 147.36650085449, 3235.0397949219, 556.18426513672 ),
},



[ "Private Theaters Hallway" ] =
{
	Min = Vector( -146.20812988281, -2270.1535644531, 33.226249694824 ),
	Max = Vector( 128.93630981445, -569.29528808594, 279.18914794922 ),
},

[ "Pools Ladder" ] =
{
	Min = Vector( -1134.3098144531, -362.83874511719, -303.05056762695 ),
	Max = Vector( -518.83184814453, 360.11004638672, 362.5071105957 ),
},

[ "Pools Hallway" ] =
{
	Min = Vector( -522.84771728516, -454.87567138672, -282.74783325195 ),
	Max = Vector( -314.56359863281, 390.43533325195, 0.059023857116699 ),
},

[ "WC TV" ] =
{
	Min = Vector( -560.69750976563, 747.27392578125, 48.341033935547 ),
	Max = Vector( -437.82315063477, 864.78039550781, 172.88806152344 ),
},

[ "WC Cabins" ] =
{
	Min = Vector( -571.34741210938, 523.15887451172, 48.180679321289 ),
	Max = Vector( -442.07684326172, 730.45642089844, 174.04122924805 ),
},


[ "WC" ] =
{
	Min = Vector( -437.87939453125, 535.14935302734, 48.272109985352 ),
	Max = Vector( -141.35884094238, 824.42626953125, 187.5598449707 ),

},



[ "Big Theater" ] =
{
	Min = Vector( -639.51062011719, 3249.2004394531, 30.313781738281 ),
	Max = Vector( 662.94512939453, 4614.43359375, 648.63684082031 ),
},

[ "Public Theater 1" ] =
{
	Min = Vector( 171.43769836426, 1270.419921875, 32.3224687576294 ),
	Max = Vector( 1097.4349365234, 2099.7136230469, 530.77514648438 ),
},

[ "Public Theater 2" ] =
{
	Min = Vector( -1090.6657714844, 1286.1877441406, 62.235130310059 ),
	Max = Vector( -162.57464599609, 2105.7517089844, 538.3232421875 ),
},

[ "Public Theater 3" ] =
{
	Min = Vector( -1104.8184814453, 2306.923828125, 32.035755157471 ),
	Max = Vector( -161.64096069336, 3253.1098632813, 585.67468261719 ),
},

[ "Public Theater 4" ] =
{
	Min = Vector( 157.50024414063, 2307.2868652344, 25.523332595825 ),
	Max = Vector( 1131.5222167969, 3240.0986328125, 759.71960449219 ),
},


[ "Private Theater 1" ] =
{
	Min = Vector( 152.69618225098, -1219.3256835938, 58.382755279541 ),
	Max = Vector( 620.84210205078, -865.26904296875, 260.17318725586 ),
},

[ "Private Theater 2" ] =
{
	Min = Vector( -608.82104492188, -1228.0458984375, 58.385353088379 ),
	Max = Vector( -146.36151123047, -886.43328857422, 260.60653686523 ),
},

[ "Private Theater 3" ] =
{
	Min = Vector( 152.32565307617, -1619.7905273438, 58.791187286377 ),
	Max = Vector( 627.19134521484, -1281.8591308594, 256.45669555664 ),
},

[ "Private Theater 4" ] =
{
	Min = Vector( -615.74816894531, -1630.3264160156, 58.19425201416 ),
	Max = Vector( -146.26507568359, -1283.9083251953, 256.81201171875 ),
},

[ "Private Theater 5" ] =
{
	Min = Vector( 149.51681518555, -2021.6477050781, 58.670211791992 ),
	Max = Vector( 612.13482666016, -1695.2244873047, 255.29849243164 ),
},

[ "Private Theater 6" ] =
{
	Min = Vector( -614.95086669922, -2020.90234375, 58.46768951416 ),
	Max = Vector( -148.18017578125, -1690.9530029297, 257.83795166016 ),
},

[ "Girl's Pool" ] =
{
	Min = Vector( -791.35784912109, 390.10684204102, -362.63693237305 ),
	Max = Vector( -29.662450790405, 1275.2302246094, 27.017086029053 ),
},

[ "Boy's Pool" ] =
{
	Min = Vector( -778.26080322266, -1336.9151611328, -341.63906860352 ),
	Max = Vector( -8.0031852722168, -460.47564697266, 4.4440994262695 ),
},

[ "Rock Pool" ] =
{
	Min = Vector( -307.66818237305, -348.57250976563, -377.00122070313 ),
	Max = Vector( 411.21954345703, 367.40081787109, 0.640384674072 ),
},

[ "Vip Ladder" ] =
{
	Min = Vector( -258.90469360352, -2684.5952148438, 33.21267700195 ),
	Max = Vector( 325.92169189453, -2274.291015625, 537.71624755859 ),
	THABMembersOnly = true,
},

[ "Vip Right Wing" ] =
{
	Min = Vector( 116.55368041992, -2270.8776855469, 300.03421020508 ),
	Max = Vector( 265.67666625977, -1945.8436279297, 537.65112304688 ),
},

[ "Vip Left Wing" ] =
{
	Min = Vector( -259.05065917969, -2270.0158691406, 300.69134521484 ),
	Max = Vector( -117.58061981201, -1944.513671875, 537.47143554688 ),
},

[ "Vip Hallway" ] =
{
	Min = Vector( -259.08303833008, -1943.8367919922, 300.31964111328 ),
	Max = Vector( 265.33801269531, -1724.9708251953, 537.56958007813 ),
},

[ "Vip Theater" ] =
{
	Min = Vector( -255.40954589844, -1719.5853271484, 300.08746337891 ),
	Max = Vector( 279.25756835938, -1068.1755371094, 610.35369873047 ),
},


[ "Small Vip" ] =
{
	Min = Vector( -111.5329284668, -2251.6376953125, 300.47229003906 ),
	Max = Vector( 105.05509185791, -1948.3758544922, 537.30850219727 ),
},

[ "Hidden Theater" ] =
{
	Min = Vector( 713.28735351563, 840.38757324219, 42.133430480957 ),
	Max = Vector( 1027.3253173828, 1148.3186035156, 237.25468444824 ),
},

[ "Admins Theater" ] =
{
	Min = Vector( -2119.5678710938, -728.71697998047, -228.93272399902 ),
	Max = Vector( -1144.9930419922, 858.20434570313, 114.54557800293 ),
	THABStaffOnly = true,
},

} )

end )




if SERVER then
	
	local UseCooldown = 0.3 -- seconds
	hook.Add( "PlayerUse", "PrivateTheaterLightSwitch", function( ply, ent )

		if ply.LastUse and ply.LastUse + UseCooldown > CurTime() then
			return false
		end

		-- Always admit admins
		if ply:IsAdmin() then return true end

		-- Only private theater owners can switch the lights
		local Theater = ply:GetTheater()
		if Theater and Theater:IsPrivate() and ent:GetClass() == "func_button" then

			ply.LastUse = CurTime()

			if Theater:GetOwner() != ply then
				Theater:AnnounceToPlayer( ply, 'Theater_OwnerUseOnly' )
				return false
			end

		end

		return true

	end )

end
--[[

	Holograms / Floating text Script by Meh
	
	Just put in the coordinates you get when standing on the ground, it's above the ground then
	By default, you only see the hologram when you are within 10m of it, to change that, edit the 10.0 infront of the "then"
	The Default holograms are at the Observatory.
	
	If you want to add a line to the hologram, just make a new Draw3DText line with the same coordinates, and edit the vertical offset.
	
	Formatting:
			Draw3DText( x, y, z  vertical offset, "text", font, text size, text size)
			
			
	To add a new hologram, copy paste this example under the existing ones, and put coordinates and text into it.
	
		if GetDistanceBetweenCoords( X, Y, Z, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( X, Y, Z,  -1.400, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.600, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.800, "TEXT", 4, 0.1, 0.1)		
		end


]]--

Citizen.CreateThread(function()
    Holograms()
end)

function Holograms()
		while true do
			Citizen.Wait(0)			
				-- Hologram No. 1
		if GetDistanceBetweenCoords( 220.8754, 207.5525, 105.4821, GetEntityCoords(GetPlayerPed(-1))) < 30.0 then--220.8754, 207.5525, 105.4821, 112.4212
			Draw3DText( 220.8754, 207.5525, 105.4821 -0.600, "Pacifc Bank Heist", 4, 0.2, 0.2)
			Draw3DText( 220.8754, 207.5525, 105.4821 -1.000, "Recommended Min 3 players", 4, 0.2, 0.2)
			Draw3DText( 220.8754, 207.5525, 105.4821 -1.400, "Need Hacker to start heist", 4, 0.2, 0.2)		
			Draw3DText( 220.8754, 207.5525, 105.4821 -1.800, "If you Die you get NOTHING", 4, 0.2, 0.2)
			Draw3DText( 220.8754, 207.5525, 105.4821 -2.200, "Hack ALL Computers upstairs to gain access to vault", 4, 0.2, 0.2)		
		end		
				--Hologram No. 2
		if GetDistanceBetweenCoords( 234.6017, -1347.1663, 30.4749, GetEntityCoords(GetPlayerPed(-1))) < 30.0 then--234.6017, -1347.1663, 30.4749, 149.8229
			Draw3DText( 234.6017, -1347.1663, 30.4749 -0.600, "Morgue Heist", 4, 0.2, 0.2)
			Draw3DText( 234.6017, -1347.1663, 30.4749 -1.000, "Recommended Min 3 players", 4, 0.2, 0.2)
			Draw3DText( 234.6017, -1347.1663, 30.4749 -1.400, "Need Stolen Tablet to Start", 4, 0.2, 0.2)		
			Draw3DText( 234.6017, -1347.1663, 30.4749 -1.800, "If you Die you get NOTHING", 4, 0.2, 0.2)
			Draw3DText( 234.6017, -1347.1663, 30.4749 -2.200, "Locate Big Crate to get reward", 4, 0.2, 0.2)	
		end	

			--Hologram No. 2
		if GetDistanceBetweenCoords( 50.5897, -1735.4919, 29.3028, GetEntityCoords(GetPlayerPed(-1))) < 30.0 then--50.5897, -1735.4919, 29.3028, 40.7187
			Draw3DText( 50.5897, -1735.4919, 29.3028 -0.600, "Scrilla Donation Center", 4, 0.2, 0.2)
			Draw3DText( 50.5897, -1735.4919, 29.3028 -1.000, "Cars, Items, Money Packs, etc", 4, 0.2, 0.2)
			Draw3DText( 50.5897, -1735.4919, 29.3028 -1.400, "All sales Final, No refunds", 4, 0.2, 0.2)
		end	

		--Hologram No. 2
		if GetDistanceBetweenCoords( 41.9903, -1746.0428, 29.3030, GetEntityCoords(GetPlayerPed(-1))) < 30.0 then--41.9903, -1746.0428, 29.3030, 37.8443
			Draw3DText( 41.9903, -1746.0428, 29.3030 -0.600, "Wager Paintball", 4, 0.2, 0.2)
			Draw3DText( 41.9903, -1746.0428, 29.3030 -1.000, "1-12 players per team", 4, 0.2, 0.2)
			Draw3DText( 41.9903, -1746.0428, 29.3030 -1.400, "All Weapons Unlocked", 4, 0.2, 0.2)
		end	

		--Hologram No. 2
		if GetDistanceBetweenCoords( 24.8956, -1766.6609, 29.3150, GetEntityCoords(GetPlayerPed(-1))) < 30.0 then---1266.1687, -2979.1858, -48.4895, 357.5986
			Draw3DText( 24.8956, -1766.6609, 29.3150 -0.600, "Teleport to Redzone Locations", 4, 0.2, 0.2)
			Draw3DText( 24.8956, -1766.6609, 29.3150 -1.000, "1v1 paid kills", 4, 0.2, 0.2)
			Draw3DText( 24.8956, -1766.6609, 29.3150 -1.400, "Coming soon...", 4, 0.2, 0.2)
		end	

		if GetDistanceBetweenCoords( 1967.6949, 2774.8003, 49.7864, GetEntityCoords(GetPlayerPed(-1))) < 30.0 then--59.5446, -1725.5415, 29.3053, 67.2260
			Draw3DText( 1967.6949, 2774.8003, 49.7863 -0.600, "PVP Kill Zone", 4, 0.2, 0.2)
			Draw3DText( 1967.6949, 2774.8003, 49.7864 -1.000, "Get Cash Per Kill", 4, 0.2, 0.2)
			Draw3DText( 1967.6949, 2774.8003, 49.7864 -1.400, "Unlimited Ammo", 4, 0.2, 0.2)
		end	

		if GetDistanceBetweenCoords( -1266.1687, -2979.1858, -48.4895, GetEntityCoords(GetPlayerPed(-1))) < 30.0 then---1266.1687, -2979.1858, -48.4895, 357.5986
			Draw3DText( -1266.1687, -2979.1858, -48.4895 -0.600, "Visit Table", 4, 0.2, 0.2)
			Draw3DText( -1266.1687, -2979.1858, -48.4895 -1.000, "to the left For Items", 4, 0.2, 0.2)
			Draw3DText( -1266.1687, -2979.1858, -48.4895 -1.400, "Vehicles Ahead", 4, 0.2, 0.2)
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(fontId)
         SetTextProportional(1)
         SetTextColour(250, 250, 250, 255)		-- You can change the text color here
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end

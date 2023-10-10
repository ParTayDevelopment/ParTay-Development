local isInVehControl = false
local windowState1 = true
local windowState2 = true
local windowState3 = true
local windowState4 = true
-- Commands [true/false]
local UseCommands = true


-----------------------------------------------------------------------------
-- ACTION FUNCTIONS
-----------------------------------------------------------------------------


function InteriorLightControl()
	local playerPed = GetPlayerPed(-1)
	if (IsPedSittingInAnyVehicle(playerPed)) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		if IsVehicleInteriorLightOn(vehicle) then
			SetVehicleInteriorlight(vehicle, false)
		else
			SetVehicleInteriorlight(vehicle, true)
		end
	end
end

function DoorControl(door)
	local playerPed = GetPlayerPed(-1)
	if (IsPedSittingInAnyVehicle(playerPed)) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		if GetVehicleDoorAngleRatio(vehicle, door) > 0.0 then
			SetVehicleDoorShut(vehicle, door, false)
		else
			SetVehicleDoorOpen(vehicle, door, false)
		end
	end
end

function SeatControl(seat)
	local playerPed = GetPlayerPed(-1)
	if (IsPedSittingInAnyVehicle(playerPed)) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		if IsVehicleSeatFree(vehicle, seat) then
			SetPedIntoVehicle(GetPlayerPed(-1), vehicle, seat)
		end
	end
end

function WindowControl(window, door)
	local playerPed = GetPlayerPed(-1)
	if (IsPedSittingInAnyVehicle(playerPed)) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		if window == 0 then
			if windowState1 == true and DoesVehicleHaveDoor(vehicle, door) then
				RollDownWindow(vehicle, window)
				windowState1 = false
			else
				RollUpWindow(vehicle, window)
				windowState1 = true
			end
		elseif window == 1 then
			if windowState2 == true and DoesVehicleHaveDoor(vehicle, door) then
				RollDownWindow(vehicle, window)
				windowState2 = false
			else
				RollUpWindow(vehicle, window)
				windowState2 = true
			end
		elseif window == 2 then
			if windowState3 == true and DoesVehicleHaveDoor(vehicle, door) then
				RollDownWindow(vehicle, window)
				windowState3 = false
			else
				RollUpWindow(vehicle, window)
				windowState3 = true
			end
		elseif window == 3 then
			if windowState4 == true and DoesVehicleHaveDoor(vehicle, door) then
				RollDownWindow(vehicle, window)
				windowState4 = false
			else
				RollUpWindow(vehicle, window)
				windowState4 = true
			end
		end
	end
end

function FrontWindowControl()
	local playerPed = GetPlayerPed(-1)
	if (IsPedSittingInAnyVehicle(playerPed)) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		if windowState1 == true or windowState2 == true then
			RollDownWindow(vehicle, 0)
			RollDownWindow(vehicle, 1)
			windowState1 = false
			windowState2 = false
		else
			RollUpWindow(vehicle, 0)
			RollUpWindow(vehicle, 1)
			windowState1 = true
			windowState2 = true
		end
	end
end

function BackWindowControl()
	local playerPed = GetPlayerPed(-1)
	if (IsPedSittingInAnyVehicle(playerPed)) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		if windowState3 == true or windowState4 == true then
			RollDownWindow(vehicle, 2)
			RollDownWindow(vehicle, 3)
			windowState3 = false
			windowState4 = false
		else
			RollUpWindow(vehicle, 2)
			RollUpWindow(vehicle, 3)
			windowState3 = true
			windowState4 = true
		end
	end
end

function AllWindowControl()
	local playerPed = GetPlayerPed(-1)
	if (IsPedSittingInAnyVehicle(playerPed)) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		if windowState1 == true or windowState2 == true or windowState3 == true or windowState4 == true then
			RollDownWindow(vehicle, 0)
			RollDownWindow(vehicle, 1)
			RollDownWindow(vehicle, 2)
			RollDownWindow(vehicle, 3)
			windowState1 = false
			windowState2 = false
			windowState3 = false
			windowState4 = false
		else
			RollUpWindow(vehicle, 0)
			RollUpWindow(vehicle, 1)
			RollUpWindow(vehicle, 2)
			RollUpWindow(vehicle, 3)
			windowState1 = true
			windowState2 = true
			windowState3 = true
			windowState4 = true
		end
	end
end

-----------------------------------------------------------------------------
-- VEHICLE COMMANDS
-----------------------------------------------------------------------------
if UseCommands then

	

	-- DOORS
	TriggerEvent('chat:addSuggestion', '/cardoor', 'Open/Close Vehicle Door', {
		{ name="ID", help="1) Driver, 2) Passenger, 3) Driver Side Rear, 4) Passenger Side Rear" }
	})

	RegisterCommand("cardoor", function(source, args, rawCommand)
		local doorID = tonumber(args[1])
		if doorID ~= nil then
			if doorID == 1 then
				DoorControl(0)
			elseif doorID == 2 then
				DoorControl(1)
			elseif doorID == 3 then
				DoorControl(2)
			elseif doorID == 4 then
				DoorControl(3)
			end
		else
			TriggerEvent("chatMessage", "Usage: ", {255, 0, 0}, "/cardoor [door id]")
		end
	end, false)

	-- SEAT
	TriggerEvent('chat:addSuggestion', '/seat', 'Move to a seat', {
		{ name="ID", help="1) Driver, 2) Passenger, 3) Driver Side Rear, 4) Passenger Side Rear, 5) Extra, 6) Extra" }
	})

	RegisterCommand("seat", function(source, args, rawCommand)
		local seatID = tonumber(args[1])
		if seatID ~= nil then
			if seatID == 1 then
				SeatControl(-1)
			elseif seatID == 2 then
				SeatControl(0)
			elseif seatID == 3 then
				SeatControl(1)
			elseif seatID == 4 then
				SeatControl(2)
			elseif seatID == 5 then
				SeatControl(3)
			elseif seatID == 6 then
				SeatControl(4)
			end
		else
			TriggerEvent("chatMessage", "Usage: ", {255, 0, 0}, "/seat [seat id]")
		end
	end, false)

	-- WINDOWS
	TriggerEvent('chat:addSuggestion', '/window', 'Roll Up/Down Window', {
		{ name="ID", help="1) Driver, 2) Passenger, 3) Driver Side Rear, 4) Passenger Side Rear" }
	})

	RegisterCommand("window", function(source, args, rawCommand)
		local windowID = tonumber(args[1])
		
		if windowID ~= nil then
			if windowID == 1 then
				WindowControl(0, 0)
			elseif windowID == 2 then
				WindowControl(1, 1)
			elseif windowID == 3 then
				WindowControl(2, 2)
			elseif windowID == 4 then
				WindowControl(3, 3)
			end
		else
			TriggerEvent("chatMessage", "Usage: ", {255, 0, 0}, "/window [door id]")
		end
	end, false)

	-- HOOD
	TriggerEvent('chat:addSuggestion', '/hood', 'Open/Close Hood')

	RegisterCommand("hood", function(source, args, rawCommand)
		DoorControl(4)
	end, false)

	-- TRUNK
	TriggerEvent('chat:addSuggestion', '/trunk', 'Open/Close Trunk')

	RegisterCommand("trunk", function(source, args, rawCommand)
		DoorControl(5)
	end, false)

	-- FRONT WINDOWS
	TriggerEvent('chat:addSuggestion', '/windowfront', 'Roll Up/Down Front Windows')

	RegisterCommand("windowfront", function(source, args, rawCommand)
		FrontWindowControl()
	end, false)

	-- BACK WINDOWS
	TriggerEvent('chat:addSuggestion', '/windowback', 'Roll Up/Down Back Windows')

	RegisterCommand("windowback", function(source, args, rawCommand)
		BackWindowControl()
	end, false)

	-- ALL WINDOWS
	TriggerEvent('chat:addSuggestion', '/windowall', 'Roll Up/Down All Windows')

	RegisterCommand("windowall", function(source, args, rawCommand)
		AllWindowControl()
	end, false)
end

-- FORCE CLOSE
RegisterCommand("vehcontrolclose", function(source, args, rawCommand)
	closeVehControl()
end, false)

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function stopAnimBindKey()
	bindKey(source, "space", "down", animationStopCommand)
end
addEvent("stopAnimBindKey", false)
addEventHandler("stopAnimBindKey", getRootElement(), stopAnimBindKey)

function animLoop()
	setElementData(source, "animLoop", 1)
end
addEvent("animLoop", true)
addEventHandler("animLoop", getRootElement(), animLoop)

function nonAnimLoop()
	setElementData(source, "animLoop", 0)
end
addEvent("nonAnimLoop", true)
addEventHandler("nonAnimLoop", getRootElement(), nonAnimLoop)

function unbindStopAnimation()
	unbindKey(source, "space", "down", animationStopCommand)
end
addEvent("unbindStopAnimation", false)
addEventHandler("unbindStopAnimation", getRootElement(), unbindStopAnimation)


local jogador = {}


function animationStopCommand(player)
	if not getControlState(player, "sprint") then
		local animLoop = getElementData(player, "animLoop")
		setElementData(player, "handsup", false)
		if not (animLoop==1) then
			stopAnimation(player)
			triggerEvent("unbindStopAnimation", player)
			setElementData(player, "teste", nil)
			if isTimer(jogador[player]) then
				killTimer(jogador[player])
			end
		end
	end
end
addCommandHandler("stopanim", animationStopCommand, false, false)





function medicanim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "reanimar" then
setPedAnimation(player, "medic", "cpr")
end
end
addCommandHandler("e", medicanim)

function aguardaranim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "aguardar" then
setAnimationForPlayer( player, "GANGS", "leanIDLE", -1, true, false, false)
end
end
addCommandHandler("e", aguardaranim)

function fumaranim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "fumar" then
setPedAnimation(player, "SMOKING", "M_smkstnd_loop")
end
end
addCommandHandler("e", fumaranim)

function fumar2anim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "fumar2" then
setPedAnimation(player, "LOWRIDER", "M_smkstnd_loop")
end
end
addCommandHandler("e", fumar2anim)

function fumar3anim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "fumar3" then
setPedAnimation(player, "GANGS", "smkcig_prtl")
end
end
addCommandHandler("e", fumar3anim)

function fumar4anim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "fumar4" then
setAnimationForPlayer(player, "SMOKING", "M_smk_drag", 4000, true, false, false)
end
end
addCommandHandler("e", fumar4anim)

function fumar5anim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "fumar5" then
setAnimationForPlayer(player, "LOWRIDER", "M_smklean_loop", -1, true, false, false)
end
end
addCommandHandler("e", fumar5anim)

function abracaranim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "abracar" then
setPedAnimation(player, "GANGS", "hndshkca")
end
end
addCommandHandler("e", abracaranim)

function abracar2anim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "abracar2" then
setPedAnimation(player, "GANGS", "hndshkfa")
end
end
addCommandHandler("e", abracar2anim)

function bravoanim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "bravo" then
setPedAnimation(player, "RIOT", "RIOT_ANGRY")
end
end
addCommandHandler("e", bravoanim)

function mortoanim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "morto" then
setPedAnimation(player, "ped", "FLOOR_hit")
end
end
addCommandHandler("e", mortoanim)

function morto2anim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "morto2" then
setPedAnimation(player, "ped", "FLOOR_hit_f")
end
end
addCommandHandler("e", mortoanim)


function comemoraranim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "comemorar" then
setPedAnimation(player, "CASINO", "manwinb")
end
end
addCommandHandler("e", comemoraranim)


function sentaranim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "sentar" then
setPedAnimation(player, "FOOD", "FF_Sit_Look")
end
end
addCommandHandler("e", sentaranim)

function sentar2anim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "sentar2" then
setPedAnimation(player, "Attractors", "Stepsit_loop")
end
end
addCommandHandler("e", sentar2anim)

function sentar3anim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "sentar3" then
setPedAnimation(player, "BEACH", "ParkSit_W_loop")
end
end
addCommandHandler("e", sentar3anim)

function repararanim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "reparar" then
setPedAnimation(player, "CAR", "Fixn_Car_loop")
end
end
addCommandHandler("e", repararanim)


function sentar4anim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "sentar4" then
setPedAnimation(player, "BEACH", "ParkSit_M_loop")
end
end
addCommandHandler("e", sentar4anim)

function sentar5anim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "sentar5" then
setPedAnimation(player, "ped", "SEAT_idle")
end
end
addCommandHandler("e", sentar5anim)

function choraranim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "chorar" then
setPedAnimation(player, "GRAVEYARD", "mrnF_loop")
end
end
addCommandHandler("e", choraranim)

function dancaranim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "dancar" then
setPedAnimation(player, "DANCING", "DAN_Down_A")
end
end
addCommandHandler("e", dancaranim)

function dancar2anim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "dancar2" then
setPedAnimation(player, "DANCING", "dnce_M_d")
end
end
addCommandHandler("e", dancar2anim)

function dancar4anim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "dancar4" then
setPedAnimation(player, "GFUNK", "Dance_B2")
end
end
addCommandHandler("e", dancar4anim)

function dancar5anim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "dancar5" then
setPedAnimation(player, "GFUNK", "Dance_G15")
end
end
addCommandHandler("e", dancar5anim)

function rapanim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "rap" then
setPedAnimation(player, "LOWRIDER", "RAP_B_Loop")
end
end
addCommandHandler("e", rapanim)

function rap2anim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "rap2" then
setPedAnimation(player, "LOWRIDER", "RAP_C_Loop")
end
end
addCommandHandler("e", rap2anim)

function rap3anim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "rap3" then
setPedAnimation(player, "LOWRIDER", "RAP_A_Loop")
end
end
addCommandHandler("e", rap3anim)


function dancar3anim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "dancar3" then
setPedAnimation(player, "GFUNK", "Dance_G3")
end
end
addCommandHandler("e", dancar3anim)


function coveranim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "cover" then
setPedAnimation(player, "ped", "duck_cower")
end
end
addCommandHandler("e", coveranim)

function assustadoanim(player, cmd, animacao)
local anima = tostring(animacao)
if anima == "assustado" then
setAnimationForPlayer(player, "ON_LOOKERS", "panic_loop", -1, true, false, false)
end
end
addCommandHandler("e", assustadoanim)

function andarnormal(source, command)
if command == "relaxado" then
setPedWalkingStyle(source, 0)
end
end
addCommandHandler("relaxado", andarnormal)


function andar(source, command)
if command == "feminino" then
setPedWalkingStyle(source, 132)
end
end
addCommandHandler("feminino", andar)

function gangster(source, command)
if command == "gangster" then
setPedWalkingStyle(source, 121)
end
end
addCommandHandler("gangster", gangster)

function marrento(source, command)
if command == "marrento" then
setPedWalkingStyle(source, 118)
end
end
addCommandHandler("marrento", marrento)

   






function setAnimationForPlayer(player, animblokk, nev, animTime, loop, posUpdate, perm)
	if animTime==nil then animTime=-1 end
	if loop==nil then loop=true end
	if posUpdate==nil then posUpdate=true end
	if perm==nil then perm=true end
	
	local animLoop = getElementData(player, "animLoop")
	if (animLoop==1) then return end
	if isElementInWater ( player ) then return end

	if isElement(player) and getElementType(player)=="player" and not getPedOccupiedVehicle(player) and getElementData(player, "freeze") ~= 1 then
		if getElementData(player, "injuriedanimation") or ( not perm and not getElementData(player, "animLoop")==1 ) then
			return false
		end
	
		triggerEvent("stopAnimBindKey", player)
		toggleAllControls(player, false, true, false)
		
		if (perm) then
			setElementData(player, "animLoop", 1)
		else
			setElementData(player, "animLoop", 0)
		end
		
		local setanim = setPedAnimation(player, animblokk, nev, animTime, loop, posUpdate, false)
		if animTime > 100 then
			setTimer(setPedAnimation, 50, 2, player, animblokk, nev, animTime, loop, posUpdate, false)
		end
		if animTime > 50 then
			setElementData(player, "animTimer", setTimer(stopAnimation, animTime, 1, player), false)
		end
		return setanim
	else
		return false
	end
end

function playerSpawn()
	setPedAnimation(source)
	toggleAllControls(source, true, true, false)
	setElementData(source, "animLoop", 0)
end
addEventHandler("onPlayerSpawn", getRootElement(), playerSpawn)
addEvent( "onPlayeranimationStopCommand", true )

function stopAnimation(player)
	if isElement(player) and getElementType(player)=="player" and getElementData(player, "freeze") ~= 1 and not getElementData(player, "injuriedanimation") and not getElementData(player, "player->repairing") then
		if isTimer( getElementData( player, "animTimer" ) ) then
			killTimer( getElementData( player, "animTimer" ) )
		end
		local updateCurrentAnimation = setPedAnimation(player)
		setElementData(player, "animLoop", 0)
		setElementData(player, "animTimer", 0)
		toggleAllControls(player, true, true, false)
		setPedAnimation(player)
		setTimer(setPedAnimation, 50, 2, player)
		setTimer(triggerEvent, 100, 1, "onPlayeranimationStopCommand", player)
		return updateCurrentAnimation
	else
		return false
	end
end










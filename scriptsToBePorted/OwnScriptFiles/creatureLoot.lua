--  a way to add loot to killed creatures

creatureLoot = {}


creatureLoot = function(pid) -- put OnWorldKillCount

local cellDescription = tes3mp.GetCell(pid)
local refId = tes3mp.GetKillRefId(pid, tes3mp.GetKillChangesSize(pid) - 1)

if refId == "skeleton champion"  and tes3mp.GetCell(pid) == "Indalen Ancestral Tomb" then
	local actorIndex = tes3mp.GetActorListSize() - 1
	local uniqueIndex = tes3mp.GetActorRefNum(actorIndex) .. "-" .. tes3mp.GetActorMpNum(actorIndex)
	
			if LoadedCells[cellDescription].data.objectData[uniqueIndex].inventory == nil then
				LoadedCells[cellDescription].data.objectData[uniqueIndex].inventory = {"gold_001",100}
			else
				LoadedCells[cellDescription].data.objectData[uniqueIndex].inventory = {"gold_001",50}
			end
			
			
			if LoadedCells[cellDescription].data.objectData[uniqueIndex].equipment == nil then
				LoadedCells[cellDescription].data.objectData[uniqueIndex].equipment = {}
			else
				LoadedCells[cellDescription].data.objectData[uniqueIndex].equipment = {}
			end
			 
			 
        --load all containers to show it up
            local objectData = LoadedCells[cellDescription].data.objectData
            local packets = LoadedCells[cellDescription].data.packets
			LoadedCells[cellDescription]:LoadContainers(pid, objectData, packets.death)    
            tes3mp.SendMessage(pid,"Sorry bro did you really think you can loot that shit?..\n",false)
end
end


return creatureLoot

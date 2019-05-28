-- add refNumDeletions
-- add commands/saveme.lua
-- 
-- work with decorateHelp later

preObjectsAndDeletions = {}


jsonInterface = require("jsonInterface")
preexistingObjects = jsonInterface.load("preObjects.json")



preObjectsAndDeletions.AddPreexistingObjects = function(eventstatus, pid, cellDescription)
   
if LoadedCells[cellDescription]:HasEntry() ~= true then
-- only send preObjects to players entering cell later logicHandler line 419 change to false
	 if preexistingObjects[cellDescription] ~= nil then
	 
			for arrayIndex, object in pairs(preexistingObjects[cellDescription]) do
			   logicHandler.CreateObjectAtLocation(cellDescription, object.location, object.refId, object.packetType)
			 
			end
	 
			LoadedCells[cellDescription].forceActorListRequest = true
	  end
	end
end



customEventHooks.registerHandler("OnCellLoad", preObjectsAndDeletions.AddPreexistingObjects)

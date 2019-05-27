--custom preObjects

jsonInterface = require("jsonInterface")

local preexistingObjects = {}
preexistingObjects = jsonInterface.load("preObjects.json")

function contentFixer.AddPreexistingObjects(cellDescription)
if WorldInstance.data.myUniques == nil then WorldInstance.data.myUniques = {} end
    if preexistingObjects[cellDescription] ~= nil then

        for arrayIndex, object in pairs(preexistingObjects[cellDescription]) do
            local unqIndex = logicHandler.CreateObjectAtLocation(cellDescription, object.location, object.refId, object.packetType)
            table.insert(WorldInstance.data.myUniques, unqIndex)
        end

        LoadedCells[cellDescription].forceActorListRequest = true
    end
end
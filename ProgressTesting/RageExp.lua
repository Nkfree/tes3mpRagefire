rageExp = {}
rageExp.IDsToPoints = jsonInterface.load("rageExp.json")
rageExp.rageCustomVariables = { "rageExp", "rageExpProgress", "rageLevel", "ragePointsSpent", "ragePoints","magicTreePoints", "magicPointsSpent", "warTreePoints", "warPointsSpent",
 "defensePointsSpent", "healerPointsSpent", "stealthPointsSpent", "defenseLifePool", "defenseRegeneration", "defenseSwiftness", "defenseResilience", "defenseEvasion", "defenseTurtleShell", 
 "defenseVitality", "defenseDumbBrute", "defenseSafeguard", "defenseResistFire", "defenseResistFrost", "defenseResistShock", "defenseResistPoison", "stealthGreed", "stealthSerpentsBlood", "stealthGlibFeet", 
 "stealthSlipperyMind", "stealthHunterInTheNight", "stealthThief", "stealthSecretPockets", "stealthCloakDagger", "stealthPoisonTips", "stealthAssassinate", "healerHealingHands", "healerManaSource", "healerStrengthenedMind", 
 "healerGuidance", "healerClericsBlessing", "healerProtectiveShell", "healerToughness", "healerLastResort", "healerFireIce", "healerGroupMorale", "warFatiguePool", "warCourage", "warHaste", "warCardio", "warAccuracy", 
 "warFighterStance", "warReinforcement", "warSurgeOfStrength", "warConditioning", "warCallToArms", "magicClarity", "magicHavoc", "magicSummoner", "magicWisdom", "magicExtraMana", "magicMagePower", "magicSorcerer", 
 "magicMindControl", "magicBattleMage", "magicWizardStrength" }
	
	
rageExp.ProcessLatestKill = function(pid, refId)
	
    tes3mp.LogMessage(enumerations.log.INFO, "Running rageExp.ProcessLatestKill() for pid " .. pid .. ", refId " .. refId)

    if rageExp.IDsToPoints[refId] ~= nil then
		
        local basePoints = rageExp.IDsToPoints[refId].points
        local extraPoints = math.random(-basePoints / 10, basePoints / 10)
        local totalPoints = basePoints + extraPoints

		-- Add a bonus based on the player's current difficulty
		local difficulty = Players[pid].data.settings.difficulty

		if difficulty == "default" then
		difficulty = config.difficulty
		end

		totalPoints = totalPoints
		totalPoints = math.ceil(totalPoints)

        if totalPoints > 0 then
            Players[pid].data.customVariables.rageExp = Players[pid].data.customVariables.rageExp + totalPoints
            tes3mp.MessageBox(pid, -1, color.White .. "You have gained " .. color.LightGreen ..
                totalPoints .. color.White .. " experience")
        end
    end
	
	local currentRageLevel = Players[pid].data.customVariables.rageLevel
	local baseXp = 100
	local nextlevel = math.floor(baseXp *((currentRageLevel + 1) ^ 2.5) / 2)
	
	if Players[pid].data.customVariables.rageLevel == 0 and Players[pid].data.customVariables.rageExp >= nextlevel + 60 then
		Players[pid].data.customVariables.rageLevel = Players[pid].data.customVariables.rageLevel + 1
		Players[pid].data.customVariables.ragePoints = Players[pid].data.customVariables.ragePoints + 5
		logicHandler.RunConsoleCommandOnPlayer(pid, 'playsound "Conjuration Hit"')
		local levelMessage = Players[pid].data.customVariables.rageLevel
		tes3mp.MessageBox(pid,-1, color.White .. "You have gained a " .. color.Coral .. "RageLevel" .. color.White .. "!\n")
		tes3mp.SendMessage(pid, color.BlueViolet .. "Congratulations! You are now Rage Level " .. color.BlueViolet .. levelMessage  .. "!\n" ..
								color.White .. "Type " .. color.Gold .. "/rage " .. color.White .. "to bring up the " .. color.Coral .. "Rage " .. color.White .. "menu.\n",false)
	elseif Players[pid].data.customVariables.rageExp >= nextlevel and Players[pid].data.customVariables.rageLevel >= 1 then
		Players[pid].data.customVariables.rageLevel = Players[pid].data.customVariables.rageLevel + 1
		Players[pid].data.customVariables.ragePoints = Players[pid].data.customVariables.ragePoints + 5
		logicHandler.RunConsoleCommandOnPlayer(pid, 'playsound "Conjuration Hit"')
		local levelMessage = Players[pid].data.customVariables.rageLevel
		tes3mp.MessageBox(pid,-1, color.White .. "You have gained a " .. color.Coral .. "RageLevel" .. color.White .. "!\n")
		tes3mp.SendMessage(pid, color.BlueViolet .. "Congratulations! You are now Rage Level " .. color.BlueViolet .. levelMessage  .. "!\n",false)
	end
end



rageExp.ProcessLatestKillinParty = function(pid, refId, nerfFactor)
	
    tes3mp.LogMessage(enumerations.log.INFO, "Running rageExp.ProcessLatestKill() for pid " .. pid .. ", refId " .. refId)

    if rageExp.IDsToPoints[refId] ~= nil then
		
        local basePoints = rageExp.IDsToPoints[refId].points
        local extraPoints = math.random(-basePoints / 10, basePoints / 10)
        local totalPoints = basePoints + extraPoints

		-- Add a bonus based on the player's current difficulty
		local difficulty = Players[pid].data.settings.difficulty

		if difficulty == "default" then
		difficulty = config.difficulty
		end

		totalPoints = totalPoints / 1.35
		totalPoints = math.ceil(totalPoints)
		
		
		
		
        if totalPoints > 0 then
            Players[pid].data.customVariables.rageExp = Players[pid].data.customVariables.rageExp + totalPoints
            tes3mp.MessageBox(pid, -1, color.White .. "You have gained " .. color.LightGreen ..
                totalPoints .. color.White .. " group experience")
        end
    end
	
	local currentRageLevel = Players[pid].data.customVariables.rageLevel
	local baseXp = 100
	local nextlevel = math.floor(baseXp *((currentRageLevel + 1) ^ 2.5) / 2)
	
	if Players[pid].data.customVariables.rageLevel == 0 and Players[pid].data.customVariables.rageExp >= nextlevel + 60 then
		Players[pid].data.customVariables.rageLevel = Players[pid].data.customVariables.rageLevel + 1
		Players[pid].data.customVariables.ragePoints = Players[pid].data.customVariables.ragePoints + 5
		local levelMessage = Players[pid].data.customVariables.rageLevel
		tes3mp.MessageBox(pid,-1, color.White .. "You have gained a " .. color.Coral .. "RageLevel" .. color.White .. "!\n")
		tes3mp.SendMessage(pid, color.BlueViolet .. "Congratulations! You are now Rage Level " .. color.BlueViolet .. levelMessage  .. "!\n" ..
								color.White .. "Type " .. color.Gold .. "/rage " .. color.White .. "to bring up the " .. color.Coral .. "Rage " .. color.White .. "menu.\n",false)
	elseif Players[pid].data.customVariables.rageExp >= nextlevel and Players[pid].data.customVariables.rageLevel >= 1 then
		Players[pid].data.customVariables.rageLevel = Players[pid].data.customVariables.rageLevel + 1
		Players[pid].data.customVariables.ragePoints = Players[pid].data.customVariables.ragePoints + 5
		local levelMessage = Players[pid].data.customVariables.rageLevel
		tes3mp.MessageBox(pid,-1, color.White .. "You have gained a " .. color.Coral .. "RageLevel" .. color.White .. "!\n")
		tes3mp.SendMessage(pid, color.BlueViolet .. "Congratulations! You are now Rage Level " .. color.BlueViolet .. levelMessage  .. "!\n",false)
	end
end

rageExp.Decide = function(pid, cellDescription)

        local uniqueIndex = tes3mp.GetActorRefNum(0) .. "-" .. tes3mp.GetActorMpNum(0)

if tes3mp.DoesActorHavePlayerKiller(0) then
 local killerPid = tes3mp.GetActorKillerPid(actorIndex)
                deathReason = "got rekt by " .. logicHandler.GetChatName(killerPid)
				local refId = self.data.objectData[uniqueIndex].refId
                -- backup: rageExp.ProcessLatestKill(killerPid, refId)

				if partySystem.utils.CompletePlayerPartyCheck(killerPid) then                                
                    local currentCell = tes3mp.GetCell(killerPid)                    
                    local dynamicParty = partySystem.utils.GetPlayerDynamicParty(killerPid)
                    local elligiblePidArray = {}                          
                    for _,playerPid in pairs (dynamicParty["memberPids"]) do       --Sorry, need to iterate twice
                        if  Players[playerPid].data.location.cell == currentCell then
                            table.insert(elligiblePidArray,playerPid)
                        end
                    end     
                    for _,playerPid in ipairs (elligiblePidArray) do
                        rageExp.ProcessLatestKillinParty(playerPid, refId, #elligiblePidArray)
                    end
                else
                    rageExp.ProcessLatestKill(killerPid, refId)
                end

				--tutorialKills.ProcessLatestKill(killerPid, refId)
				--MainQuestRequiredKills.ProcessLatestKill(killerPid, refId)
--legendaryItems.ProcessLatestKill(killerPid, refId)

end


customEventHooks.registerHandler("OnActorDeath", rageExp.Decide)
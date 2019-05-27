-- dungeon difficulty in eventhandler cell change

--[[ Dungeon Creation ]]--	
-- Difficulty			
				local cell = tes3mp.GetCell(pid)

				tes3mp.LogMessage(2, "Listing cell difficulties:")
                tableHelper.print(cellDifficulties)

                local cellDifficulty = cellDifficulties[cell]

                if cellDifficulty ~= nil then
                    tes3mp.LogAppend(2, "- Found difficulty for " .. cell)
                    Players[pid]:SetDifficulty(cellDifficulty)
                    Players[pid]:LoadSettings()
                else
                    tes3mp.LogAppend(2, "- Could not find difficulty for " .. cell)
                    Players[pid]:SetDifficulty(0)
                    Players[pid]:LoadSettings()
                end				
-- Player Effects                  
                local locationalDiseases = {"mercantile_nerf", "by_firedamage1", "weaknessToMagicka50", "jump10", "weaknessToFire25", "weaknessToFrost25", "weaknessToShock25", "weaknessToMagicka25", "weaknessToPoison25", "blind25", "blind50", "poison2", 
				"disintegrateWeapon","disintegrateArmor", "by_weaknesstoshock50", "by_slowfall10", "drain_acrobatics_100", "drain_enchant_100", "weaknessToFrost50", "drainSpeed25", "drainSpeed50"}

				for _, locationalDisease in pairs(locationalDiseases) do

				if tableHelper.containsValue(Players[pid].data.spellbook, locationalDisease) then
				-- Is the player no longer in a cell where they should have this cell-specific disease?
				if not tableHelper.containsValue(cellsForDiseases[locationalDisease], tes3mp.GetCell(pid)) then
					logicHandler.RunConsoleCommandOnPlayer(pid, "player->removespell " .. locationalDisease)
					tableHelper.removeValue(Players[pid].data.spellbook, locationalDisease)
				end
				elseif tableHelper.containsValue(cellsForDiseases[locationalDisease], tes3mp.GetCell(pid)) then
					table.insert(Players[pid].data.spellbook, locationalDisease)
					logicHandler.RunConsoleCommandOnPlayer(pid, "player->addspell " .. locationalDisease)
				end
				end
-- Creature Effects			
				local locationalMonsterBuffs = { "resist_frost_50", "resist_magicka_50", "resist_shock_50", "resist_poison_50", "resist_fire_50", "by_resistancetofire50", "resist_frost_100", "resist_magicka_100", "resist_shock_100", "resist_poison_100", "resist_fire_100", "chameleon25", "chameleon50", "speed25", "fireShield1000", "sanctuary25", "restore_health_1", "restore_health_5", "strength50", "speed10", "agility50","by_elementalresistance25", "by_levitate", "by_restorestrength2", "by_fortifyattack50", "by_restorestrength15" }


                for _, locationalMonsterBuff in pairs(locationalMonsterBuffs) do

                    -- Are we in a cell where the monsters should be buffed?
                    if tableHelper.containsValue(cellsForMonsterBuffs[locationalMonsterBuff], tes3mp.GetCell(pid)) then
                        local actorList = LoadedCells[cell].data.packets.actorList
                        logicHandler.RunConsoleCommandOnObjectsForPlayer(pid, "addspell " .. locationalMonsterBuff, cell, actorList)
                    end
                end

                Players[pid].data.location.regionName = regionName
                Players[pid].hasFinishedInitialTeleportation = true
            end

				--[[
				for _, uniqueIndex in pairs(LoadedCells[cellDescription].data.packets.actorList) do
					if 
				
				local playerLocation = Players[pid].data.location
				local aggroDistance = 50
				for _, uniqueIndex in pairs(LoadedCells[cellDescription].data.packets.actorList) do
				local actorLocation = LoadedCells[cellDescription].data.objectData[uniqueIndex].location
					if math.abs(playerLocation.posX - actorLocation.posX) <= aggroDistance and
						math.abs(playerLocation.posY - actorLocation.posY) <= aggroDistance and
						math.abs(playerLocation.posZ - actorLocation.posZ) <= aggroDistance then
						logicHandler.SetAIForActor(LoadedCells[cellDescription], uniqueIndex, enumerations.ai.COMBAT, pid)
					end
				end
				end
				end]]--
-- Dungeon Tier Messages

				if tableHelper.containsValue(tier1MessageTable, cell) == true then
					tes3mp.MessageBox(pid, -1, color.White .. "You have entered a " .. color.LightGreen .. "Tier I " .. color.White .. "area")
				end

				if tableHelper.containsValue(tier2MessageTable, cell) == true then
					tes3mp.MessageBox(pid, -1, color.White .. "You have entered a " .. color.Aqua .. "Tier II " .. color.White .. "area")
				end

				if tableHelper.containsValue(tier3MessageTable, cell) == true then
					tes3mp.MessageBox(pid, -1, color.White .. "You have entered a " .. color.RoyalBlue .. "Tier III " .. color.White .. "area")
				end

				if tableHelper.containsValue(tier4MessageTable, cell) == true then
					tes3mp.MessageBox(pid, -1, color.White .. "You have entered a " .. color.Yellow .. "Tier IV " .. color.White .. "area")
				end

				if tableHelper.containsValue(tier5MessageTable, cell) == true then
					tes3mp.MessageBox(pid, -1, color.White .. "You have entered a " .. color.Red .. "Tier V " .. color.White .. "area")
				end

-- Change Home Notification Message

				if tableHelper.containsValue(homecityTable, cell) == true and Players[pid].data["changeHomeNotification"] == true then
					tes3mp.MessageBox(pid, -1, color.White .. "You can change your " .. color.BlueViolet .. "Homecity " .. color.White .. "in this area")
				end
-- PvP				
				if tableHelper.containsValue(pvpTable, cell) == true then
					tes3mp.MessageBox(pid, -1, color.White .. "You have entered a " .. color.Red .. "PvP " .. color.White .. "area")
				end
--[[ End of Cell/Dungeon Editing ]]--
-- use https://github.com/Schnibbsel/tes3mpRagefire/blob/master/Ragefire%20Versions%20of%20other%20scripts/boyos/playerPacketHelper.lua

function BasePlayer:AddRageAbility(abilityName)

-- magic tree
-- Extra Magic
	if abilityName == "extraMana" then
        if tableHelper.containsValue(self.data.spellbook, "extra_mana_1") then
            self:RunConsoleCommand("removespell extra_mana_1")
            self:RunConsoleCommand("addspell extra_mana_2")
            self:Message("You now have the 2nd Tier of Extra Mana!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "extra_mana_2") then
            self:RunConsoleCommand("removespell extra_mana_2")
            self:RunConsoleCommand("addspell extra_mana_3")
            self:Message("You now have the 3rd Tier of Extra Mana!\n")
        else
            self:RunConsoleCommand("addspell extra_mana_1")
            self:Message("You now have the 1st Tier of Extra Mana!\n")
        end
	end
-- wisdom
    if abilityName == "wisdom" then
        if tableHelper.containsValue(self.data.spellbook, "wisdom_1") then
            self:RunConsoleCommand("removespell wisdom_1")
            self:RunConsoleCommand("addspell wisdom_2")
            self:Message("You now have the 2nd Tier of Wisdom!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "wisdom_2") then
            self:RunConsoleCommand("removespell wisdom_2")
            self:RunConsoleCommand("addspell wisdom_3")
            self:Message("You now have the 3rd Tier of Wisdom!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "wisdom_3") then
            self:RunConsoleCommand("removespell wisdom_3")
            self:RunConsoleCommand("addspell wisdom_4")
            self:Message("You now have the 4th Tier of Wisdom!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "wisdom_4") then
            self:RunConsoleCommand("removespell wisdom_4")
            self:RunConsoleCommand("addspell wisdom_5")
            self:Message("You now have the 5th Tier of Wisdom!\n")
        else
            self:RunConsoleCommand("addspell wisdom_1")
            self:Message("You now have the 1st Tier of Wisdom!\n")
        end
	end
-- havoc   
	if abilityName == "havoc" then
        if tableHelper.containsValue(self.data.spellbook, "havoc_1") then
            self:RunConsoleCommand("removespell havoc_1")
            self:RunConsoleCommand("addspell havoc_2")
            self:Message("You now have the 2nd Tier of Havoc!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "havoc_2") then
            self:RunConsoleCommand("removespell havoc_2")
            self:RunConsoleCommand("addspell havoc_3")
            self:Message("You now have the 3rd Tier of Havoc!\n")
		 elseif tableHelper.containsValue(self.data.spellbook, "havoc_3") then
            self:RunConsoleCommand("removespell havoc_3")
            self:RunConsoleCommand("addspell havoc_4")
            self:Message("You now have the 4th Tier of Havoc!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "havoc_4") then
            self:RunConsoleCommand("removespell havoc_4")
            self:RunConsoleCommand("addspell havoc_5")
            self:Message("You now have the 5th Tier of Havoc!\n")
        else
            self:RunConsoleCommand("addspell havoc_1")
            self:Message("You now have the 1st Tier of Havoc!\n")
		end
	end
-- summoner
	if abilityName == "summoner" then
        if tableHelper.containsValue(self.data.spellbook, "summoner_1") then
            self:RunConsoleCommand("removespell summoner_1")
            self:RunConsoleCommand("addspell summoner_2")
            self:Message("You now have the 2nd Tier of Summoner!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "summoner_2") then
            self:RunConsoleCommand("removespell summoner_2")
            self:RunConsoleCommand("addspell summoner_3")
            self:Message("You now have the 3rd Tier of Summoner!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "summoner_3") then
            self:RunConsoleCommand("removespell summoner_3")
            self:RunConsoleCommand("addspell summoner_4")
            self:Message("You now have the 4th Tier of Summoner!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "summoner_4") then
            self:RunConsoleCommand("removespell summoner_4")
            self:RunConsoleCommand("addspell summoner_5")
            self:Message("You now have the 5th Tier of Summoner!\n")
        else
            self:RunConsoleCommand("addspell summoner_1")
            self:Message("You now have the 1st Tier of Summoner!\n")
		end	
    end
-- clarity
	if abilityName == "clarity" then
		if tableHelper.containsValue(self.data.spellbook, "clarity_1") then
			self:RunConsoleCommand("removespell clarity_1")
            self:RunConsoleCommand("addspell clarity_2")
            self:Message("You now have the 2nd Tier of Clarity!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "clarity_2") then
			self:RunConsoleCommand("removespell clarity_2")
            self:RunConsoleCommand("addspell clarity_3")
            self:Message("You now have the 3rd Tier of Clarity!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "clarity_3") then
			self:RunConsoleCommand("removespell clarity_3")
            self:RunConsoleCommand("addspell clarity_4")
            self:Message("You now have the 4th Tier of Clarity!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "clarity_4") then
			self:RunConsoleCommand("removespell clarity_4")
            self:RunConsoleCommand("addspell clarity_5")
            self:Message("You now have the 5th Tier of Clarity!\n")
		else	
			self:RunConsoleCommand("addspell clarity_1")
            self:Message("You now have Clarity!\n")
		end
	end
-- Magic Tier 2
-- mage power
	if abilityName == "magePower" then
        if tableHelper.containsValue(self.data.spellbook, "mage_power_1") then
            self:RunConsoleCommand("removespell mage_power_1")
            self:RunConsoleCommand("addspell mage_power_2")
            self:Message("You now have the 2nd Tier of Mage Power!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "mage_power_2") then
			self:RunConsoleCommand("removespell mage_power_2")
            self:RunConsoleCommand("addspell mage_power_3")
            self:Message("You now have the 3rd Tier of Mage Power!\n")
		else
			self:RunConsoleCommand("addspell mage_power_1")
            self:Message("You now have the 1st Tier of Mage Power!\n")
		end
	end
-- Mind Control
	if abilityName == "mindControl" then
	self:RunConsoleCommand("addspell command_creature_1")
	self:RunConsoleCommand("addspell mind_control_1")
            self:Message("You now have Mind Control!\n")
	end
-- Sorcerer
	if abilityName == "sorcerer" then
        if tableHelper.containsValue(self.data.spellbook, "sorcerer_1") then
            self:RunConsoleCommand("removespell sorcerer_1")
            self:RunConsoleCommand("addspell sorcerer_2")
            self:Message("You now have the 2nd Tier of Sorcerer!\n")
		else
			self:RunConsoleCommand("addspell sorcerer_1")
            self:Message("You now have the 1st Tier of Sorcerer!\n")
		end
	end
-- Battle Mage
	if abilityName == "battleMage" then
        if tableHelper.containsValue(self.data.spellbook, "battle_mage_1") then
            self:RunConsoleCommand("removespell battle_mage_1")
            self:RunConsoleCommand("addspell battle_mage_2")
            self:Message("You now have the 2nd Tier of Battle Mage!\n")
		else
			self:RunConsoleCommand("addspell battle_mage_1")
            self:Message("You now have the 1st Tier of Battle Mage!\n")
		end
	end
-- wizard strength
	if abilityName == "wizardStrength" then
		if tableHelper.containsValue(self.data.spellbook, "wizard_strength") then
			self:RunConsoleCommand("removespell wizard_strength")
            self:RunConsoleCommand("addspell wizard_strength_2")
            self:Message("You now have the 2nd Tier of Wizard Strength!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "wizard_strength_2") then
			self:RunConsoleCommand("removespell wizard_strength_2")
            self:RunConsoleCommand("addspell wizard_strength_3")
            self:Message("You now have the 3rd Tier of Wizard Strength!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "wizard_strength_3") then
			self:RunConsoleCommand("removespell wizard_strength_3")
            self:RunConsoleCommand("addspell wizard_strength_4")
            self:Message("You now have the 4th Tier of Wizard Strength!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "wizard_strength_4") then
			self:RunConsoleCommand("removespell wizard_strength_4")
            self:RunConsoleCommand("addspell wizard_strength_5")
            self:Message("You now have the 5th Tier of Wizard Strength!\n")
		else
			self:RunConsoleCommand("addspell wizard_strength")
            self:Message("You now have Wizard Strength!\n")
		end
	end
-- war tree
-- fatigue pool
	if abilityName == "fatiguePool" then
        if tableHelper.containsValue(self.data.spellbook, "fatigue_pool_1") then
            self:RunConsoleCommand("removespell fatigue_pool_1")
            self:RunConsoleCommand("addspell fatigue_pool_2")
            self:Message("You now have the 2nd Tier of Fatigue Pool!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "fatigue_pool_2") then
            self:RunConsoleCommand("removespell fatigue_pool_2")
            self:RunConsoleCommand("addspell fatigue_pool_3")
            self:Message("You now have the 3rd Tier of Fatigue Pool!\n")
        else
            self:RunConsoleCommand("addspell fatigue_pool_1")
            self:Message("You now have the 1st Tier of Fatigue Pool!\n")
		end	
    end
-- cardio
	if abilityName == "cardio" then
        if tableHelper.containsValue(self.data.spellbook, "fatigue_regen_1") then
            self:RunConsoleCommand("removespell fatigue_regen_1")
            self:RunConsoleCommand("addspell fatigue_regen_2")
            self:Message("You now have the 2nd Tier of Cardio!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "fatigue_regen_2") then
            self:RunConsoleCommand("removespell fatigue_regen_2")
            self:RunConsoleCommand("addspell fatigue_regen_3")
            self:Message("You now have the 3rd Tier of Cardio!\n")
        else
            self:RunConsoleCommand("addspell fatigue_regen_1")
            self:Message("You now have the 1st Tier of Cardio!\n")
		end	
    end
-- courage
		if abilityName == "courage" then
        if tableHelper.containsValue(self.data.spellbook, "courage_1") then
            self:RunConsoleCommand("removespell courage_1")
            self:RunConsoleCommand("addspell courage_2")
            self:Message("You now have the 2nd Tier of Courage!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "courage_2") then
            self:RunConsoleCommand("removespell courage_2")
            self:RunConsoleCommand("addspell courage_3")
            self:Message("You now have the 3rd Tier of Courage!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "courage_3") then
            self:RunConsoleCommand("removespell courage_3")
            self:RunConsoleCommand("addspell courage_4")
            self:Message("You now have the 4th Tier of Courage!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "courage_4") then
            self:RunConsoleCommand("removespell courage_4")
            self:RunConsoleCommand("addspell courage_5")
            self:Message("You now have the 5th Tier of Courage!\n")
        else
            self:RunConsoleCommand("addspell courage_1")
            self:Message("You now have the 1st Tier of Courage!\n")
		end	
    end
-- accuracy
		if abilityName == "accuracy" then
        if tableHelper.containsValue(self.data.spellbook, "accuracy_1") then
            self:RunConsoleCommand("removespell accuracy_1")
            self:RunConsoleCommand("addspell accuracy_2")
            self:Message("You now have the 2nd Tier of Accuracy!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "accuracy_2") then
            self:RunConsoleCommand("removespell accuracy_2")
            self:RunConsoleCommand("addspell accuracy_3")
            self:Message("You now have the 3rd Tier of Accuracy!\n")
        else
            self:RunConsoleCommand("addspell accuracy_1")
            self:Message("You now have the 1st Tier of Accuracy!\n")
		end	
    end
-- haste
	if abilityName == "haste" then
        if tableHelper.containsValue(self.data.spellbook, "haste_1") then
            self:RunConsoleCommand("removespell haste_1")
            self:RunConsoleCommand("addspell haste_2")
            self:Message("You now have the 2nd Tier of Haste!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "haste_2") then
            self:RunConsoleCommand("removespell haste_2")
            self:RunConsoleCommand("addspell haste_3")
            self:Message("You now have the 3rd Tier of Haste!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "haste_3") then
            self:RunConsoleCommand("removespell haste_3")
            self:RunConsoleCommand("addspell haste_4")
            self:Message("You now have the 4th Tier of Haste!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "haste_4") then
            self:RunConsoleCommand("removespell haste_4")
            self:RunConsoleCommand("addspell haste_5")
            self:Message("You now have the 5th Tier of Haste!\n")
        else
            self:RunConsoleCommand("addspell haste_1")
            self:Message("You now have the 1st Tier of Haste!\n")
		end	
    end
-- war tree tier 2
-- Fighter's Stance
	if abilityName == "fighterStance" then
	self:RunConsoleCommand("addspell fighters_stance")
            self:Message("You now have Fighter Stance!\n")
	end	
-- Reinforcement	
	if abilityName == "reinforcement" then
        if tableHelper.containsValue(self.data.spellbook, "reinforcement_1") then
            self:RunConsoleCommand("removespell reinforcement_1")
            self:RunConsoleCommand("addspell reinforcement_2")
            self:Message("You now have the 2nd Tier of Reinforcement!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "reinforcement_2") then
            self:RunConsoleCommand("removespell reinforcement_2")
            self:RunConsoleCommand("addspell reinforcement_3")
            self:Message("You now have the 3rd Tier of Reinforcement!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "reinforcement_3") then
            self:RunConsoleCommand("removespell reinforcement_3")
            self:RunConsoleCommand("addspell reinforcement_4")
            self:Message("You now have the 4th Tier of Reinforcement!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "reinforcement_4") then
            self:RunConsoleCommand("removespell reinforcement_4")
            self:RunConsoleCommand("addspell reinforcement_5")
            self:Message("You now have the 5th Tier of Reinforcement!\n")
        else
            self:RunConsoleCommand("addspell reinforcement_1")
            self:Message("You now have the 1st Tier of Reinforcement!\n")
		end	
    end
-- Surge of Strength
	if abilityName == "surgeOfStrength" then
			self:RunConsoleCommand("addspell surge_of_strength")
            self:RunConsoleCommand("addspell surge_of_strength_ce")
            self:Message("You now have Surge of Strength!\n")
    end
-- conditioning
	if abilityName == "conditioning" then
        if tableHelper.containsValue(self.data.spellbook, "conditioning_1") then
            self:RunConsoleCommand("removespell conditioning_1")
            self:RunConsoleCommand("addspell conditioning_2")
            self:Message("You now have the 2nd Tier of Conditioning!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "conditioning_2") then
            self:RunConsoleCommand("removespell conditioning_2")
            self:RunConsoleCommand("addspell conditioning_3")
            self:Message("You now have the 3rd Tier of Conditioning!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "conditioning_3") then
            self:RunConsoleCommand("removespell conditioning_3")
            self:RunConsoleCommand("addspell conditioning_4")
            self:Message("You now have the 4th Tier of Conditioning!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "conditioning_4") then
            self:RunConsoleCommand("removespell conditioning_4")
            self:RunConsoleCommand("addspell conditioning_5")
            self:Message("You now have the 5th Tier of Conditioning!\n")
        else
            self:RunConsoleCommand("addspell conditioning_1")
            self:Message("You now have the 1st Tier of Conditioning!\n")
		end	
    end
-- call to arms
	if abilityName == "callToArms" then
			self:RunConsoleCommand("addspell call_to_arms")
            self:RunConsoleCommand("addspell call_to_arms_ce")
            self:Message("You now have Call to Arms!\n")
    end
-- defense tree tier 1
-- life pool
	if abilityName == "lifePool" then
        if tableHelper.containsValue(self.data.spellbook, "life_pool_1") then
            self:RunConsoleCommand("removespell life_pool_1")
            self:RunConsoleCommand("addspell life_pool_2")
            self:Message("You now have the 2nd Tier of Life Pool!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "life_pool_2") then
            self:RunConsoleCommand("removespell life_pool_2")
            self:RunConsoleCommand("addspell life_pool_3")
            self:Message("You now have the 3rd Tier of Life Pool!\n")
        else
            self:RunConsoleCommand("addspell life_pool_1")
            self:Message("You now have the 1st Tier of Life Pool!\n")
		end	
    end
-- regeneration
	if abilityName == "regeneration" then
            self:RunConsoleCommand("addspell health_regen")
            self:Message("You now have Regeneration!\n")
    end
-- swiftness
	if abilityName == "swiftness" then
        if tableHelper.containsValue(self.data.spellbook, "swiftness_1") then
            self:RunConsoleCommand("removespell swiftness_1")
            self:RunConsoleCommand("addspell swiftness_2")
            self:Message("You now have the 2nd Tier of Swiftness!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "swiftness_2") then
            self:RunConsoleCommand("removespell swiftness_2")
            self:RunConsoleCommand("addspell swiftness_3")
            self:Message("You now have the 3rd Tier of Swiftness!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "swiftness_3") then
            self:RunConsoleCommand("removespell swiftness_3")
            self:RunConsoleCommand("addspell swiftness_4")
            self:Message("You now have the 4th Tier of Swiftness!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "swiftness_4") then
            self:RunConsoleCommand("removespell swiftness_4")
            self:RunConsoleCommand("addspell swiftness_5")
            self:Message("You now have the 5th Tier of Swiftness!\n")	
        else
            self:RunConsoleCommand("addspell swiftness_1")
            self:Message("You now have the 1st Tier of Swiftness!\n")
		end	
    end
-- evasion
	if abilityName == "evasion" then
        if tableHelper.containsValue(self.data.spellbook, "evasion_1") then
            self:RunConsoleCommand("removespell evasion_1")
            self:RunConsoleCommand("addspell evasion_2")
            self:Message("You now have the 2nd Tier of Evasion!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "evasion_2") then
            self:RunConsoleCommand("removespell evasion_2")
            self:RunConsoleCommand("addspell evasion_3")
            self:Message("You now have the 3rd Tier of Evasion!\n")
		 elseif tableHelper.containsValue(self.data.spellbook, "evasion_3") then
            self:RunConsoleCommand("removespell evasion_3")
            self:RunConsoleCommand("addspell evasion_4")
            self:Message("You now have the 4th Tier of Evasion!\n")
		 elseif tableHelper.containsValue(self.data.spellbook, "evasion_4") then
            self:RunConsoleCommand("removespell evasion_4")
            self:RunConsoleCommand("addspell evasion_5")
            self:Message("You now have the 5th Tier of Evasion!\n")
        else
            self:RunConsoleCommand("addspell evasion_1")
            self:Message("You now have the 1st Tier of Evasion!\n")
		end	
    end
--resilience
	if abilityName == "resilience" then
        if tableHelper.containsValue(self.data.spellbook, "resilience_1") then
            self:RunConsoleCommand("removespell resilience_1")
            self:RunConsoleCommand("addspell resilience_2")
            self:Message("You now have the 2nd Tier of Resilience!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "resilience_2") then
            self:RunConsoleCommand("removespell resilience_2")
            self:RunConsoleCommand("addspell resilience_3")
            self:Message("You now have the 3rd Tier of Resilience!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "resilience_3") then
            self:RunConsoleCommand("removespell resilience_3")
            self:RunConsoleCommand("addspell resilience_4")
            self:Message("You now have the 4th Tier of Resilience!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "resilience_4") then
            self:RunConsoleCommand("removespell resilience_4")
            self:RunConsoleCommand("addspell resilience_5")
            self:Message("You now have the 5th Tier of Resilience!\n")
        else
            self:RunConsoleCommand("addspell resilience_1")
            self:Message("You now have the 1st Tier of Resilience!\n")
		end	
    end
-- defense tree tier 2
-- turtle shell
	if abilityName == "turtleShell" then
        if tableHelper.containsValue(self.data.spellbook, "turtle_shell_1") then
            self:RunConsoleCommand("removespell turtle_shell_1")
            self:RunConsoleCommand("addspell turtle_shell_2")
            self:Message("You now have the 2nd Tier of Turtle Shell!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "turtle_shell_2") then
            self:RunConsoleCommand("removespell turtle_shell_2")
            self:RunConsoleCommand("addspell turtle_shell_3")
            self:Message("You now have the 3rd Tier of Turtle Shell!\n")
        else
            self:RunConsoleCommand("addspell turtle_shell_1")
            self:Message("You now have the 1st Tier of Turtle Shell!\n")
		end	
    end
-- dumb brute
	if abilityName == "dumbBrute" then
			self:RunConsoleCommand("addspell dumb_brute_1")
            self:Message("You now have Dumb Brute!\n")
	end
-- resistances
-- resist fire
	if abilityName == "resistFire" then
        if tableHelper.containsValue(self.data.spellbook, "resist_fire_1") then
            self:RunConsoleCommand("removespell resist_fire_1")
            self:RunConsoleCommand("addspell resist_fire_2")
            self:Message("You now have the 2nd Tier of Resist Fire!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "resist_fire_2") then
            self:RunConsoleCommand("removespell resist_fire_2")
            self:RunConsoleCommand("addspell resist_fire_3")
            self:Message("You now have the 3rd Tier of Resist Fire!\n")
        else
            self:RunConsoleCommand("addspell resist_fire_1")
            self:Message("You now have the 1st Tier of Resist Fire!\n")
		end	
    end
-- resist frost
	if abilityName == "resistFrost" then
        if tableHelper.containsValue(self.data.spellbook, "resist_frost_1") then
            self:RunConsoleCommand("removespell resist_frost_1")
            self:RunConsoleCommand("addspell resist_frost_2")
            self:Message("You now have the 2nd Tier of Resist Frost!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "resist_frost_2") then
            self:RunConsoleCommand("removespell resist_frost_2")
            self:RunConsoleCommand("addspell resist_frost_3")
            self:Message("You now have the 3rd Tier of Resist Frost!\n")
        else
            self:RunConsoleCommand("addspell resist_frost_1")
            self:Message("You now have the 1st Tier of Resist Frost!\n")
		end	
    end
-- resist shock
	if abilityName == "resistShock" then
        if tableHelper.containsValue(self.data.spellbook, "resist_shock_1") then
            self:RunConsoleCommand("removespell resist_shock_1")
            self:RunConsoleCommand("addspell resist_shock_2")
            self:Message("You now have the 2nd Tier of Resist Shock!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "resist_shock_2") then
            self:RunConsoleCommand("removespell resist_shock_2")
            self:RunConsoleCommand("addspell resist_shock_3")
            self:Message("You now have the 3rd Tier of Resist Shock!\n")
        else
            self:RunConsoleCommand("addspell resist_shock_1")
            self:Message("You now have the 1st Tier of Resist Shock!\n")
		end	
    end
-- resist poison
	if abilityName == "resistPoison" then
        if tableHelper.containsValue(self.data.spellbook, "resist_poison_1") then
            self:RunConsoleCommand("removespell resist_poison_1")
            self:RunConsoleCommand("addspell resist_poison_2")
            self:Message("You now have the 2nd Tier of Resist Poison!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "resist_poison_2") then
            self:RunConsoleCommand("removespell resist_poison_2")
            self:RunConsoleCommand("addspell resist_poison_3")
            self:Message("You now have the 3rd Tier of Resist Poison!\n")
        else
            self:RunConsoleCommand("addspell resist_poison_1")
            self:Message("You now have the 1st Tier of Resist Poison!\n")
		end	
    end
-- vitality
	if abilityName == "vitality" then
        if tableHelper.containsValue(self.data.spellbook, "vitality_1") then
            self:RunConsoleCommand("removespell vitality_1")
            self:RunConsoleCommand("addspell vitality_2")
            self:Message("You now have the 2nd Tier of Vitality!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "vitality_2") then
            self:RunConsoleCommand("removespell vitality_2")
            self:RunConsoleCommand("addspell vitality_3")
            self:Message("You now have the 3rd Tier of Vitality!\n")
        else
            self:RunConsoleCommand("addspell vitality_1")
            self:Message("You now have the 1st Tier of Vitality!\n")
		end	
    end
-- safeguard
	if abilityName == "safeguard" then
        if tableHelper.containsValue(self.data.spellbook, "safe_guard_1") then
            self:RunConsoleCommand("removespell safe_guard_1")
            self:RunConsoleCommand("addspell safe_guard_2")
            self:Message("You now have the 2nd Tier of Safeguard!\n")
        else
            self:RunConsoleCommand("addspell safe_guard_1")
            self:Message("You now have the 1st Tier of Safeguard!\n")
		end	
    end
-- Healer Tree Tier 1
-- Extra Magic
	if abilityName == "manaSource" then
        if tableHelper.containsValue(self.data.spellbook, "mana_source_1") then
            self:RunConsoleCommand("removespell mana_source_1")
            self:RunConsoleCommand("addspell mana_source_2")
            self:Message("You now have the 2nd Tier of Mana Source!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "mana_source_2") then
            self:RunConsoleCommand("removespell mana_source_2")
            self:RunConsoleCommand("addspell mana_source_3")
            self:Message("You now have the 3rd Tier of Mana Source!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "mana_source_3") then
            self:RunConsoleCommand("removespell mana_source_3")
            self:RunConsoleCommand("addspell mana_source_4")
            self:Message("You now have the 4th Tier of Mana Source!\n")
        else
            self:RunConsoleCommand("addspell mana_source_1")
            self:Message("You now have the 1st Tier of Mana Source!\n")
        end
	end
-- Strengthened Mind	
	if abilityName == "strengthenedMind" then
        if tableHelper.containsValue(self.data.spellbook, "strengthened_mind_1") then
            self:RunConsoleCommand("removespell strengthened_mind_1")
            self:RunConsoleCommand("addspell strengthened_mind_2")
            self:Message("You now have the 2nd Tier of Strengthened Mind!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "strengthened_mind_2") then
            self:RunConsoleCommand("removespell strengthened_mind_2")
            self:RunConsoleCommand("addspell strengthened_mind_3")
            self:Message("You now have the 3rd Tier of Strengthened Mind!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "strengthened_mind_3") then
            self:RunConsoleCommand("removespell strengthened_mind_3")
            self:RunConsoleCommand("addspell strengthened_mind_4")
            self:Message("You now have the 4th Tier of Strengthened Mind!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "strengthened_mind_4") then
            self:RunConsoleCommand("removespell strengthened_mind_4")
            self:RunConsoleCommand("addspell strengthened_mind_5")
            self:Message("You now have the 5th Tier of Strengthened Mind!\n")
        else
            self:RunConsoleCommand("addspell strengthened_mind_1")
            self:Message("You now have the 1st Tier of Strengthened Mind!\n")
        end
	end
-- healing hands
	if abilityName == "healingHands" then
        if tableHelper.containsValue(self.data.spellbook, "healing_hands_1") then
            self:RunConsoleCommand("removespell healing_hands_1")
            self:RunConsoleCommand("addspell healing_hands_2")
            self:Message("You now have the 2nd Tier of Healing Hands!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "healing_hands_2") then
            self:RunConsoleCommand("removespell healing_hands_2")
            self:RunConsoleCommand("addspell healing_hands_3")
            self:Message("You now have the 3rd Tier of Healing Hands!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "healing_hands_3") then
            self:RunConsoleCommand("removespell healing_hands_3")
            self:RunConsoleCommand("addspell healing_hands_4")
            self:Message("You now have the 4th Tier of Healing Hands!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "healing_hands_4") then
            self:RunConsoleCommand("removespell healing_hands_4")
            self:RunConsoleCommand("addspell healing_hands_5")
            self:Message("You now have the 5th Tier of Healing Hands!\n")
        else
            self:RunConsoleCommand("addspell healing_hands_1")
            self:Message("You now have the 1st Tier of Healing Hands!\n")
		end	
    end
-- guidance
	if abilityName == "guidance" then
        if tableHelper.containsValue(self.data.spellbook, "guidance_1") then
            self:RunConsoleCommand("removespell guidance_1")
            self:RunConsoleCommand("addspell guidance_2")
            self:Message("You now have the 2nd Tier of Guidance!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "guidance_2") then
            self:RunConsoleCommand("removespell guidance_2")
            self:RunConsoleCommand("addspell guidance_3")
            self:Message("You now have the 3rd Tier of Guidance!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "guidance_3") then
            self:RunConsoleCommand("removespell guidance_3")
            self:RunConsoleCommand("addspell guidance_4")
            self:Message("You now have the 4th Tier of Guidance!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "guidance_4") then
            self:RunConsoleCommand("removespell guidance_4")
            self:RunConsoleCommand("addspell guidance_5")
            self:Message("You now have the 5th Tier of Guidance!\n")
        else
            self:RunConsoleCommand("addspell guidance_1")
            self:Message("You now have the 1st Tier of Guidance!\n")
        end
	end
-- clerics blessing	
	if abilityName == "clericsBlessing" then
        if tableHelper.containsValue(self.data.spellbook, "clerics_blessing_1") then
            self:RunConsoleCommand("removespell clerics_blessing_1")
            self:RunConsoleCommand("addspell clerics_blessing_2")
			self:Message("You now have the 2nd Tier of Cleric's Blessing!\n")
		else
            self:RunConsoleCommand("addspell clerics_blessing_1")
            self:Message("You now have the 1st Tier of Cleric's Blessing!\n")
		end	
    end
-- Healer Tree Tier 2 --------
-- Protective Shell
	if abilityName == "protectiveShell" then
        if tableHelper.containsValue(self.data.spellbook, "protective_shell_1") then
            self:RunConsoleCommand("removespell protective_shell_1")
            self:RunConsoleCommand("addspell protective_shell_2")
            self:Message("You now have the 2nd Tier of Protective Shell!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "protective_shell_2") then
            self:RunConsoleCommand("removespell protective_shell_2")
            self:RunConsoleCommand("addspell protective_shell_3")
            self:Message("You now have the 3rd Tier of Protective Shell!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "protective_shell_3") then
            self:RunConsoleCommand("removespell protective_shell_3")
            self:RunConsoleCommand("addspell protective_shell_4")
            self:Message("You now have the 4th Tier of Protective Shell!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "protective_shell_4") then
            self:RunConsoleCommand("removespell protective_shell_4")
            self:RunConsoleCommand("addspell protective_shell_5")
            self:Message("You now have the 5th Tier of Protective Shell!\n")
        else
            self:RunConsoleCommand("addspell protective_shell_1")
            self:Message("You now have the 1st Tier of Protective Shell!\n")
		end	
    end
-- Toughness
	if abilityName == "toughness" then 
            self:RunConsoleCommand("addspell toughness_1")
            self:Message("You now have Toughness!\n")
    end
-- Last Resort
	if abilityName == "lastResort" then 
            self:RunConsoleCommand("addspell last_resort")
			self:RunConsoleCommand("addspell last_resort_ce")
            self:Message("You now have Last Resort!\n")
    end
-- Fire and Ice
	if abilityName == "fireIce" then
        if tableHelper.containsValue(self.data.spellbook, "fire_ice_1") then
            self:RunConsoleCommand("removespell fire_ice_1")
            self:RunConsoleCommand("addspell fire_ice_2")
            self:Message("You now have the 2nd Tier of Fire and Ice!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "fire_ice_2") then
            self:RunConsoleCommand("removespell fire_ice_2")
            self:RunConsoleCommand("addspell fire_ice_3")
            self:Message("You now have the 3rd Tier of Fire and Ice!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "fire_ice_3") then
            self:RunConsoleCommand("removespell fire_ice_3")
            self:RunConsoleCommand("addspell fire_ice_4")
            self:Message("You now have the 4th Tier of Fire and Ice!\n")
        else
            self:RunConsoleCommand("addspell fire_ice_1")
            self:Message("You now have the 1st Tier of Fire and Ice!\n")
		end	
    end
-- group morale
	if abilityName == "groupMorale" then
        if tableHelper.containsValue(self.data.spellbook, "group_morale_1") then
            self:RunConsoleCommand("removespell group_morale_1")
            self:RunConsoleCommand("addspell group_morale_2")
			self:Message("You now have the 2nd Tier of Group Morale!\n")
		else
            self:RunConsoleCommand("addspell group_morale_1")
            self:Message("You now have the 1st Tier of Group Moral!\n")
		end	
    end

-- stealth tree
-- greed
	if abilityName == "greed" then
        if tableHelper.containsValue(self.data.spellbook, "greed_1") then
            self:RunConsoleCommand("removespell greed_1")
            self:RunConsoleCommand("addspell greed_2")
            self:Message("You now have the 2nd Tier of Greed!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "greed_2") then
            self:RunConsoleCommand("removespell greed_2")
            self:RunConsoleCommand("addspell greed_3")
            self:Message("You now have the 3rd Tier of Greed!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "greed_3") then
            self:RunConsoleCommand("removespell greed_4")
            self:RunConsoleCommand("addspell greed_4")
            self:Message("You now have the 4th Tier of Greed!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "greed_4") then
            self:RunConsoleCommand("removespell greed_4")
            self:RunConsoleCommand("addspell greed_5")
            self:Message("You now have the 5th Tier of Greed!\n")
        else
            self:RunConsoleCommand("addspell greed_1")
            self:Message("You now have the 1st Tier of Greed!\n")
		end	
    end
-- Serpents Blood
	if abilityName == "serpentsBlood" then
        if tableHelper.containsValue(self.data.spellbook, "serpents_blood_1") then
            self:RunConsoleCommand("removespell serpents_blood_1")
            self:RunConsoleCommand("addspell serpents_blood_2")
            self:Message("You now have the 2nd Tier of Serpent's Blood!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "serpents_blood_2") then
            self:RunConsoleCommand("removespell serpents_blood_2")
            self:RunConsoleCommand("addspell serpents_blood_3")
            self:Message("You now have the 3rd Tier of Serpent's Blood!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "serpents_blood_3") then
            self:RunConsoleCommand("removespell serpents_blood_3")
            self:RunConsoleCommand("addspell serpents_blood_4")
            self:Message("You now have the 4th Tier of Serpent's Blood!\n")
        else
            self:RunConsoleCommand("addspell serpents_blood_1")
            self:Message("You now have the 1st Tier of Serpent's Blood!\n")
		end	
    end
-- Glib Feet
	if abilityName == "glibFeet" then
		self:RunConsoleCommand("addspell glib_feet")
        self:Message("You now have Glib Feet!\n")
	end
-- Slippery Mind
	if abilityName == "slipperyMind" then
        if tableHelper.containsValue(self.data.spellbook, "slipper_mind_1") then
            self:RunConsoleCommand("removespell slipper_mind_1")
            self:RunConsoleCommand("addspell slipper_mind_2")
            self:Message("You now have the 2nd Tier of Slippery Mind!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "slipper_mind_2") then
            self:RunConsoleCommand("removespell slipper_mind_2")
            self:RunConsoleCommand("addspell slipper_mind_3")
            self:Message("You now have the 3rd Tier of Slippery Mind!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "slipper_mind_3") then
            self:RunConsoleCommand("removespell slipper_mind_3")
            self:RunConsoleCommand("addspell slipper_mind_4")
            self:Message("You now have the 4th Tier of Slippery Mind!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "slipper_mind_4") then
            self:RunConsoleCommand("removespell slipper_mind_4")
            self:RunConsoleCommand("addspell slipper_mind_5")
            self:Message("You now have the 5th Tier of Slippery Mind!\n")
        else
            self:RunConsoleCommand("addspell slipper_mind_1")
            self:Message("You now have the 1st Tier of Slippery Mind!\n")
		end	
    end
-- Hunter in the Night
	if abilityName == "hunterInTheNight" then
		self:RunConsoleCommand("addspell hunter_in_the_night")
        self:Message("You now have Hunter in the night!\nType " .. color.Gold .. "/night off " .. color.White .. "to deactivate it and " .. color.Gold .. "/night on " .. color.White .. "reactivate it.\n")
	end
-- Secret Pockets
	if abilityName == "secretPockets" then
        if tableHelper.containsValue(self.data.spellbook, "secret_pockets_1") then
            self:RunConsoleCommand("removespell secret_pockets_1")
            self:RunConsoleCommand("addspell secret_pockets_2")
            self:Message("You now have the 2nd Tier of Secret Pockets!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "secret_pockets_2") then
            self:RunConsoleCommand("removespell secret_pockets_2")
            self:RunConsoleCommand("addspell secret_pockets_3")
            self:Message("You now have the 3rd Tier of Secret Pockets!\n")
        else
            self:RunConsoleCommand("addspell secret_pockets_1")
            self:Message("You now have the 1st Tier of Secret Pockets!\n")
		end	
    end
-- Cloak and Dagger(hardened skin)
	if abilityName == "cloakDagger" then
        if tableHelper.containsValue(self.data.spellbook, "cloak_dagger_1") then
            self:RunConsoleCommand("removespell cloak_dagger_1")
            self:RunConsoleCommand("addspell cloak_dagger_2")
            self:Message("You now have the 2nd Tier of Cloak and Dagger!\n")
        elseif tableHelper.containsValue(self.data.spellbook, "cloak_dagger_2") then
            self:RunConsoleCommand("removespell cloak_dagger_2")
            self:RunConsoleCommand("addspell cloak_dagger_3")
            self:Message("You now have the 3rd Tier of Cloak and Dagger!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "cloak_dagger_3") then
            self:RunConsoleCommand("removespell cloak_dagger_3")
            self:RunConsoleCommand("addspell cloak_dagger_4")
            self:Message("You now have the 4th Tier of Cloak and Dagger!\n")
		elseif tableHelper.containsValue(self.data.spellbook, "cloak_dagger_4") then
            self:RunConsoleCommand("removespell cloak_dagger_4")
            self:RunConsoleCommand("addspell cloak_dagger_5")
            self:Message("You now have the 5th Tier of Cloak and Dagger!\n")
        else
            self:RunConsoleCommand("addspell cloak_dagger_1")
            self:Message("You now have the 1st Tier of Cloak and Dagger!\n")
		end	
    end
-- poison tips
	if abilityName == "poisonTips" then
        self:Message("You now have the Poison tips ability!\nType " .. color.Gold .. "/poison " .. color.White .. "to view how to make it and " .. color.Gold .. "/fletching " .. color.White .. "to bring up the fletching menu for arrow making.\n")
	end
-- assassinate	
	if abilityName == "assassinate" then
		self:RunConsoleCommand("addspell assassinate")
        self:Message("You now have the Assassinate ability!\n")
	end
end

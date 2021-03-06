function hunter_sv(self)
	
	local focus = UnitPower("player")
	local sting_duration = jps.debuff_duration("target","Serpent Sting")
	
	if not ud("target","Hunter's Mark") then
		spell = "Hunter's Mark"
	
	elseif GetUnitSpeed("player") == 0 and not ub("player", "Aspect of the Hawk") then
		spell = "Aspect of the Hawk"
		
	elseif jps.MultiTarget and focus > 40 then
		spell = "Multi-Shot"
		
	elseif sting_duration < 2 then
		spell = "Serpent Sting"
	
	elseif ub("player", "Lock and Load") then
		spell = "Explosive Shot"
		
	elseif cd("Explosive Shot") == 0 and focus > 44 then
		spell = "Explosive Shot"
		
	elseif cd("Black Arrow") == 0 then
		spell = "Black Arrow"
		
	elseif UnitHealth("target")/UnitHealthMax("target") <= 0.2 and cd("Kill Shot") == 0 then
		spell = "Kill Shot"
		
	elseif focus > 85 then
	  	spell = "Arcane Shot"
	
	elseif jps.UseCDs and cd("Rapid Fire") == 0 and not ub("player","Rapid Fire") then
		spell = "Rapid Fire"
		
	elseif GetUnitSpeed("player") > 0 and not ub("player", "Aspect of the Fox") then
		spell = "Aspect of the Fox"
	
	else
		spell = "Cobra Shot"
		
	end
	
	return spell
end

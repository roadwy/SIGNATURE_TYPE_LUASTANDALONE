if #mp.enum_mpattributesubstring("SCPT:CosmicEnergyAPy") >= 3 or #mp.enum_mpattributesubstring("SCPT:CosmicEnergyBPy") >= 1 then
  return mp.INFECTED
end
return mp.CLEAN

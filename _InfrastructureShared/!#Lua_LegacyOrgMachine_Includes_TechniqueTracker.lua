if IsLegacyOrgMachine() == true then
  mp.set_mpattribute("Lua:TTExclusion")
  return mp.INFECTED
end
mp.set_mpattribute("Lua:IsNotLegacyOrgMachine")
return mp.CLEAN

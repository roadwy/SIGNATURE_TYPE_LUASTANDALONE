if mp.get_mpattribute("pea_isexe") and mp.get_mpattribute("HSTR:PossibleVcEpStub") then
  return mp.INFECTED
end
return mp.CLEAN

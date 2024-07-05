if mp.HSTR_WEIGHT >= 2 then
  mp.set_mpattribute("PUA:Block:InstallCore.A")
  return mp.INFECTED
end
return mp.LOWFI

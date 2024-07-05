if mp.HSTR_WEIGHT >= 5 then
  mp.set_mpattribute("PUA:Block:AMCleaner.H")
  return mp.INFECTED
end
return mp.LOWFI

if mp.HSTR_WEIGHT >= 5 then
  mp.set_mpattribute("PUA:Block:AMCleaner.K")
  return mp.INFECTED
end
return mp.LOWFI

if mp.HSTR_WEIGHT >= 7 then
  mp.set_mpattribute("PUA:Block:AMCleaner.B")
  return mp.INFECTED
end
return mp.LOWFI

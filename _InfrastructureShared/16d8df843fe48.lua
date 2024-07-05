if mp.HSTR_WEIGHT >= 31 then
  mp.set_mpattribute("PUA:Block:AMCleaner.E")
  return mp.INFECTED
end
return mp.LOWFI

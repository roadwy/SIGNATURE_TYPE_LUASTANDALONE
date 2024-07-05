if mp.HSTR_WEIGHT >= 5 then
  mp.set_mpattribute("PUA:Block:MacCleaner.B")
  return mp.INFECTED
end
return mp.LOWFI

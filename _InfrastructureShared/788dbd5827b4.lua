if mp.HSTR_WEIGHT >= 5 then
  mp.set_mpattribute("PUA:Block:MacReviver.F")
  return mp.INFECTED
end
return mp.LOWFI

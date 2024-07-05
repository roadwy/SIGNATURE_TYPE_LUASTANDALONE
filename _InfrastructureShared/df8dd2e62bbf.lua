if mp.HSTR_WEIGHT >= 8 then
  mp.set_mpattribute("PUA:Block:MacBooster.F")
  return mp.INFECTED
end
return mp.LOWFI

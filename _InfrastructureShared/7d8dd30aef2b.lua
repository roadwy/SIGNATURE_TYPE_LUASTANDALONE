if mp.HSTR_WEIGHT >= 6 then
  mp.set_mpattribute("PUA:Block:MacBooster")
  return mp.INFECTED
end
return mp.LOWFI

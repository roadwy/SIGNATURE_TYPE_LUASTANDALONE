if mp.HSTR_WEIGHT >= 5 then
  mp.set_mpattribute("PUA:Block:Freekey.A")
  return mp.INFECTED
end
return mp.LOWFI

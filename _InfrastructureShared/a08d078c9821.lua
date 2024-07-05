if mp.HSTR_WEIGHT >= 7 then
  mp.set_mpattribute("PUA:Block:Coinminer.C")
  return mp.INFECTED
end
return mp.LOWFI

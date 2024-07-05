if mp.HSTR_WEIGHT >= 12 then
  mp.set_mpattribute("PUA:Block:Coinminer.A")
  return mp.INFECTED
end
return mp.LOWFI

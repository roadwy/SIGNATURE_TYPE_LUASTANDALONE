if mp.HSTR_WEIGHT >= 3 then
  mp.set_mpattribute("PUA:Block:Refog.E")
  return mp.INFECTED
end
return mp.LOWFI

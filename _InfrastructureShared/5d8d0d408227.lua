if mp.HSTR_WEIGHT >= 5 then
  mp.set_mpattribute("PUA:Block:Glims")
  return mp.INFECTED
end
return mp.LOWFI

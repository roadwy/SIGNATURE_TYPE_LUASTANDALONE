if mp.HSTR_WEIGHT >= 4 then
  mp.set_mpattribute("PUA:Block:DirectHW.B")
  return mp.INFECTED
end
return mp.LOWFI

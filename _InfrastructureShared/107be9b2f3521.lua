if mp.HSTR_WEIGHT >= 8 then
  mp.set_mpattribute("PUA:Block:Wapsx.B")
  return mp.INFECTED
end
return mp.LOWFI

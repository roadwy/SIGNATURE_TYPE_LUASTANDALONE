if mp.HSTR_WEIGHT >= 5 then
  mp.set_mpattribute("PUA:Block:Nomibi.C")
  return mp.INFECTED
end
return mp.LOWFI

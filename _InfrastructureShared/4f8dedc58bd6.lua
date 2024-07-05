if mp.HSTR_WEIGHT >= 7 then
  mp.set_mpattribute("PUA:Block:Aircrack")
  return mp.INFECTED
end
return mp.LOWFI

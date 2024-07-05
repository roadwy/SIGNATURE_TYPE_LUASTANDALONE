if mp.bitand(mp.HSTR_WEIGHT, 3) >= 2 then
  mp.set_mpattribute("PUA:Block:TurtleCoin")
  return mp.INFECTED
end
return mp.CLEAN

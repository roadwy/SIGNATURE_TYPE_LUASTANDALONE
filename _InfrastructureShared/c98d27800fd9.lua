if mp.HSTR_WEIGHT >= 2 then
  mp.set_mpattribute("PUA:Block:MacOptimizer.B")
  return mp.INFECTED
end
return mp.LOWFI

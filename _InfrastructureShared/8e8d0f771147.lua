if mp.HSTR_WEIGHT >= 5 then
  mp.set_mpattribute("PUA:Block:Optimizer.A")
  return mp.INFECTED
end
return mp.LOWFI

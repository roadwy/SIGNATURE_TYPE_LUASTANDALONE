if mp.HSTR_WEIGHT >= 6 then
  mp.set_mpattribute("PUA:Block:AoboKeylogger.B")
  return mp.INFECTED
end
return mp.LOWFI

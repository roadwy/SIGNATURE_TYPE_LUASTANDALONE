if mp.HSTR_WEIGHT >= 5 then
  mp.set_mpattribute("PUA:Block:AoboKeylogger.T")
  return mp.INFECTED
end
return mp.LOWFI

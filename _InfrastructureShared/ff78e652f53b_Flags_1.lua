if mp.HSTR_WEIGHT >= 11 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 4 then
  mp.set_mpattribute("HSTR:Yalogger")
end
return mp.CLEAN

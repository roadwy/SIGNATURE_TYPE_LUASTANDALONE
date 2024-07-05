if mp.HSTR_WEIGHT >= 15 then
  return mp.INFECTED
elseif mp.HSTR_WEIGHT >= 11 then
  mp.set_mpattribute("HSTR:KasidetLowfi")
end
return mp.CLEAN

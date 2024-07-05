if mp.HSTR_WEIGHT >= 5 then
  return mp.INFECTED
end
mp.set_mpattribute("do_exhaustivehstr_rescan_sistakasti")
return mp.CLEAN

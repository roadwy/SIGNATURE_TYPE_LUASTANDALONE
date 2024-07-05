if mp.HSTR_WEIGHT >= 9 then
  return mp.INFECTED
end
mp.set_mpattribute("do_exhaustivehstr_rescan_onescan")
return mp.CLEAN

if mp.HSTR_WEIGHT >= 21 then
  return mp.INFECTED
end
mp.set_mpattribute("do_exhaustivehstr_rescan")
return mp.CLEAN

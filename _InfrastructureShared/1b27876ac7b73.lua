if mp.HSTR_WEIGHT >= 36 then
  return mp.INFECTED
end
if mp.bitand(mp.HSTR_WEIGHT, 15) >= 3 then
  mp.set_mpattribute("do_exhaustivehstr_rescan_injector")
end
return mp.CLEAN

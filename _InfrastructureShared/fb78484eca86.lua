if mp.bitand(mp.HSTR_WEIGHT, 15) + 16 >= 18 then
  return mp.INFECTED
end
mp.set_mpattribute("do_exhaustivehstr_rescan_prepscram")
return mp.CLEAN

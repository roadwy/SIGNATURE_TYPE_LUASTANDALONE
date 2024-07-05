if not mp.get_mpattribute("do_exhaustivehstr_64bit_rescan") then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan")
end
if mp.HSTR_WEIGHT >= 14 then
  return mp.INFECTED
end
return mp.CLEAN

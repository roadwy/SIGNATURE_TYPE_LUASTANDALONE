if mp.HSTR_WEIGHT >= 13 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 6 then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
end
return mp.CLEAN

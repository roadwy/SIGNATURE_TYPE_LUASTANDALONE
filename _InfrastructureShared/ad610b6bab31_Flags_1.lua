if mp.HSTR_WEIGHT >= 34 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 14 then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
end
return mp.CLEAN

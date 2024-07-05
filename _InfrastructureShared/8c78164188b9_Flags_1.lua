if mp.HSTR_WEIGHT >= 4 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT > 2 then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
end
return mp.CLEAN

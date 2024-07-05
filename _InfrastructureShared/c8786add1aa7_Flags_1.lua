if mp.HSTR_WEIGHT >= 4 then
  return mp.INFECTED
else
  mp.set_mpattribute("do_exhaustivehstr_rescan")
end
return mp.CLEAN

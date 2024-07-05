if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
elseif mp.HSTR_WEIGHT >= 2 then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  return mp.LOWFI
end
return mp.CLEAN

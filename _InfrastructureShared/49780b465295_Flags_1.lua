if mp.HSTR_WEIGHT >= 3 then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  return mp.SUSPICIOUS
end
if mp.HSTR_WEIGHT >= 2 then
  return mp.LOWFI
end
return mp.CLEAN

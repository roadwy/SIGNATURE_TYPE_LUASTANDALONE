if mp.HSTR_WEIGHT > 5 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT > 4 then
  return mp.SUSPICIOUS
end
mp.set_mpattribute("do_exhaustivehstr_rescan")
pe.reemulate()
return mp.CLEAN

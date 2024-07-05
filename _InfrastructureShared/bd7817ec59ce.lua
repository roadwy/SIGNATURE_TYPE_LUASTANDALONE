if mp.HSTR_WEIGHT == 13 then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  pe.reemulate()
end
if mp.HSTR_WEIGHT == 14 then
  return mp.INFECTED
end
return mp.CLEAN

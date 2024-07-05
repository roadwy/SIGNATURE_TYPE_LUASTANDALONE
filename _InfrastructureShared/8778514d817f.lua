if mp.HSTR_WEIGHT == 20 then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  pe.reemulate()
end
if mp.HSTR_WEIGHT == 22 then
  return mp.INFECTED
end
return mp.CLEAN

if peattributes.isdll and peattributes.hasexports and mp.getfilesize() < 350000 and mp.HSTR_WEIGHT == 1 then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  pe.reemulate()
end
if mp.HSTR_WEIGHT == 2 then
  return mp.INFECTED
end
return mp.CLEAN

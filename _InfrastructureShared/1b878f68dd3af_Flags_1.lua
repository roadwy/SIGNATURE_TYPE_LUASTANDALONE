if mp.HSTR_WEIGHT >= 8 and peattributes.isdll and peattributes.hasexports then
  return mp.INFECTED
end
if not mp.get_mpattribute("do_exhaustivehstr_rescan") then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  pe.reemulate()
  return mp.CLEAN
end
return mp.CLEAN

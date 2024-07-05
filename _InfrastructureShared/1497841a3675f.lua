if mp.HSTR_WEIGHT >= 12 and peattributes.ismsil then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT < 12 and peattributes.ismsil then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  pe.reemulate()
end
return mp.LOWFI

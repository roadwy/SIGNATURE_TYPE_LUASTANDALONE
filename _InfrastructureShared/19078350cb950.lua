if mp.HSTR_WEIGHT > 4 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT <= 4 then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  pe.reemulate()
end
return mp.LOWFI

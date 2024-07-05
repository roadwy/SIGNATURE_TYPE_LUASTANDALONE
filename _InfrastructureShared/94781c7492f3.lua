if mp.HSTR_WEIGHT >= 8 then
  return mp.INFECTED
elseif mp.HSTR_WEIGHT >= 6 then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  pe.reemulate()
end
return mp.LOWFI

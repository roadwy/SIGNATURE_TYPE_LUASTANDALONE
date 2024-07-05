if mp.HSTR_WEIGHT == 4 then
  return mp.INFECTED
end
mp.set_mpattribute("do_exhaustivehstr_rescan")
pe.reemulate()
return mp.LOWFI

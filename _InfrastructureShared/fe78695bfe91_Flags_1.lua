if mp.HSTR_WEIGHT >= 41 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT == 40 then
  mp.set_mpattribute("MpPreemptiveMultiTasking")
  pe.reemulate()
end
if mp.HSTR_WEIGHT >= 30 then
  return mp.LOWFI
end
return mp.CLEAN

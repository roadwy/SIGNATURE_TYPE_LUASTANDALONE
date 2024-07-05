if mp.HSTR_WEIGHT >= 2 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT == 1 then
  mp.set_mpattribute("HSTR:Win32.Fauppod.S100")
  return mp.LOWFI
end
return mp.CLEAN

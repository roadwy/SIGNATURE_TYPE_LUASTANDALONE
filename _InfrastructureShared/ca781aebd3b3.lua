if mp.HSTR_WEIGHT >= 6 then
  return mp.INFECTED
end
mp.set_mpattribute("HSTR:Trojan:Win32/Ramdo.H")
return mp.CLEAN

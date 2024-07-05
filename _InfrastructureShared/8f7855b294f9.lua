if not peattributes.isdll then
  return mp.CLEAN
end
mp.set_mpattribute("HSTR:Trojan:Win32/Colisi")
if mp.HSTR_WEIGHT >= 4 then
  return mp.INFECTED
end
return mp.CLEAN

if mp.get_mpattribute("SLF:Win32/Sysdupate.E") then
  return mp.CLEAN
end
if 0 + hstrlog[1].hitcount + hstrlog[2].hitcount >= 4 then
  return mp.INFECTED
end
return mp.CLEAN

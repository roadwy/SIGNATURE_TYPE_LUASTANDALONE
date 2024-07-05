if not mp.get_mpattribute("HSTR:Trojan:Win32/MpTest_memscan.BE") then
  return mp.CLEAN
end
return mp.INFECTED

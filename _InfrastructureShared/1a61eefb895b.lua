if pehdr.Machine == 34404 and peattributes.isdll and (mp.get_mpattribute("ALF:Trojan:Win32/TrickBot.SL1") or mp.get_mpattribute("ALF:Trojan:Win32/TrickBot.SL2")) and pehdr.NumberOfSections == 8 and mp.get_mpattribute("LUA:FileSizeGT2M.A") then
  return mp.INFECTED
end
return mp.CLEAN

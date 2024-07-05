if peattributes.isexe and mp.get_mpattribute("TEL:Trojan:Win32/Kovter_Config") then
  return mp.INFECTED
end
return mp.CLEAN

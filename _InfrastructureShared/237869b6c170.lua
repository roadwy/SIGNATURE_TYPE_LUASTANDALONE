if mp.get_mpattribute("HSTR:Trojan:Win32/ChineseKeyboardCheck!MTB") then
  return mp.INFECTED
end
return mp.CLEAN

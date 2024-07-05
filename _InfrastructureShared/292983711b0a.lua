local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = L0_0.match_offset
L1_1 = L1_1 + 32
L2_2 = 16
L3_3 = ""
if L0_0.is_header then
  L3_3 = tostring(headerpage):sub(L1_1, L1_1 + L2_2)
else
  L3_3 = tostring(footerpage):sub(L1_1, L1_1 + L2_2)
end
if L3_3 ~= nil then
  L3_3 = L3_3:lower()
  if string.find(L3_3, "calc", 1, true) or string.find(L3_3, "reg", 1, true) or string.find(L3_3, "mshta", 1, true) or string.find(L3_3, "powershell", 1, true) or string.find(L3_3, "bitsadmin", 1, true) or string.find(L3_3, "schtasks", 1, true) or string.find(L3_3, "rundll", 1, true) or string.find(L3_3, "wscript", 1, true) or string.find(L3_3, "cscript", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN

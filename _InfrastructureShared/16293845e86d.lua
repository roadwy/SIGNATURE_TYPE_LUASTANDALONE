local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = L0_0.match_offset
L1_1 = L1_1 + 9
L2_2 = 256
L3_3 = ""
L4_4 = 0
L5_5 = 0
if L0_0.is_header then
  L3_3 = tostring(headerpage):sub(L1_1, L1_1 + L2_2)
else
  L3_3 = tostring(footerpage):sub(L1_1, L1_1 + L2_2)
end
L3_3, L4_4 = string.gsub(L3_3, "%^", "")
L3_3, L5_5 = string.gsub(L3_3, "`", "")
L3_3 = string.lower(L3_3)
if L4_4 + L5_5 > 10 and string.find(L3_3, "powershell", 1, true) then
  mp.set_mpattribute("SCPT:rtcShellPSObfus.A")
end
if L4_4 > 20 and string.find(L3_3, "cmd", 1, true) then
  mp.set_mpattribute("SCPT:rtcShellCmdObfus.A")
end
return mp.INFECTED

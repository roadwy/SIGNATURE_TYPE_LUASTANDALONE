local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p1
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = L1_1
L1_1 = L1_1.match
L3_3 = "([^\\]+%.exe)$"
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.find
L2_2 = L2_2(L3_3, "service.exe")
if L2_2 then
  L3_3 = L1_1.sub
  L3_3 = L3_3(L1_1, 1, L2_2 - 1)
  L1_1 = L3_3
else
  L3_3 = L1_1.sub
  L3_3 = L3_3(L1_1, 1, -5)
  L1_1 = L3_3
end
L3_3 = "HKLM\\SYSTEM\\CurrentControlSet\\Services\\"
L3_3 = L3_3 .. L1_1
if sysio.RegOpenKey(L3_3) then
  return mp.INFECTED
end
return mp.CLEAN

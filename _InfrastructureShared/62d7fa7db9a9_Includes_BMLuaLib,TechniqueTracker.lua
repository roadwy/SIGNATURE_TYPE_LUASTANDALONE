local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = L1_1
L1_1 = L1_1.lower
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.gsub
L3_3 = L1_1
L4_4 = "%^"
L5_5 = ""
L3_3 = L2_2(L3_3, L4_4, L5_5)
if L3_3 < 5 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.gsub
L5_5 = L2_2
L4_4 = L4_4(L5_5, " ", "")
L2_2 = L4_4
L4_4 = {
  L5_5,
  "cmd/cmshtahttp://"
}
L5_5 = "startmshtahttp://"
L5_5 = contains
L5_5 = L5_5(L2_2, L4_4)
if not L5_5 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = {
  "winword.exe",
  "excel.exe",
  "powerpnt.exe",
  "mspub.exe"
}
if IsProcNameInParentProcessTree("cmdhstr", L5_5) then
  return mp.INFECTED
end
return mp.CLEAN

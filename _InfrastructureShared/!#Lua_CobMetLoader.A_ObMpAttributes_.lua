local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L8_8 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L1_1(L2_2))
if L0_0 == "explorer.exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESS_PPID
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.match
  L3_3 = L1_1
  L4_4 = "^pid:(%w+),ProcessStart:(%w+)$"
  L3_3 = L2_2(L3_3, L4_4)
  L4_4 = tonumber
  L5_5 = L2_2
  L4_4 = L4_4(L5_5)
  L5_5 = tonumber
  L6_6 = L3_3
  L5_5 = L5_5(L6_6)
  L6_6 = mp
  L6_6 = L6_6.bsplit
  L7_7 = L5_5
  L8_8 = 32
  L7_7 = L6_6(L7_7, L8_8)
  L8_8 = string
  L8_8 = L8_8.format
  L8_8 = L8_8("ppids:{{%d,%d,%d}}\000", L4_4, L6_6, L7_7)
  mp.TriggerScanResource("ems", L8_8, mp.SCANSOURCE_RTSIG, 3000)
  return mp.INFECTED
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

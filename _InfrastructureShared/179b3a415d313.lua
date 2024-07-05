local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = this_sigattrlog
L0_0 = L0_0[9]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.match
  L1_1 = this_sigattrlog
  L1_1 = L1_1[9]
  L1_1 = L1_1.ppid
  L2_2 = "pid:(%w+),ProcessStart:(%w+)"
  L1_1 = L0_0(L1_1, L2_2)
  L2_2 = tonumber
  L3_3 = L0_0
  L2_2 = L2_2(L3_3)
  L3_3 = tonumber
  L4_4 = L1_1
  L3_3 = L3_3(L4_4)
  L4_4 = mp
  L4_4 = L4_4.bsplit
  L5_5 = L3_3
  L6_6 = 32
  L5_5 = L4_4(L5_5, L6_6)
  L6_6 = string
  L6_6 = L6_6.format
  L6_6 = L6_6("ppids:{{%d,%d,%d}}\000", L2_2, L4_4, L5_5)
  mp.TriggerScanResource("ems", L6_6)
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0

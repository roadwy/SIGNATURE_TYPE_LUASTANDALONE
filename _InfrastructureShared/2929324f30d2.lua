local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCPT:JS/newActiveX.A"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 4096 or L0_0 < 500 then
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetBruteMatchData
L1_1 = L1_1()
L2_2 = L1_1.is_header
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = tostring
L3_3 = headerpage
L2_2 = L2_2(L3_3)
L3_3 = L2_2
L2_2 = L2_2.sub
L4_4 = 0
L5_5 = L0_0
L2_2 = L2_2(L3_3, L4_4, L5_5)
L4_4 = L2_2
L3_3 = L2_2.sub
L5_5 = L1_1.match_offset
L5_5 = L5_5 + 10
L6_6 = L1_1.match_offset
L6_6 = L6_6 + 47
L3_3 = L3_3(L4_4, L5_5, L6_6)
L4_4 = L3_3
L3_3 = L3_3.find
L5_5 = "%-EncodedCommand%s+"
L4_4 = L3_3(L4_4, L5_5)
if L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
L6_6 = L2_2
L5_5 = L2_2.find
L7_7 = "\","
L5_5 = L5_5(L6_6, L7_7, -256, true)
if L5_5 == nil then
  L6_6 = mp
  L6_6 = L6_6.INFECTED
  return L6_6
end
L7_7 = L2_2
L6_6 = L2_2.find
L6_6 = L6_6(L7_7, " ", -256, true)
if L6_6 ~= nil and L5_5 > L6_6 then
  L5_5 = L6_6
end
L7_7 = L2_2.sub
L7_7 = L7_7(L2_2, L1_1.match_offset + 10 + L4_4, L5_5 - 1)
if L7_7 == nil then
  return mp.INFECTED
end
mp.vfo_add_buffer(L7_7, "[PowerShellB64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
mp.get_mpattribute("//SCPT:JS/PowerShellB64")
return mp.INFECTED

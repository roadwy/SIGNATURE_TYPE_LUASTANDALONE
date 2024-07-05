local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 2097152 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = headerpage
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "^%s-'"
L2_2 = L2_2(L3_3, L4_4)
if nil == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = 1
L3_3 = #L1_1
L3_3 = L1_1[L3_3]
if L3_3 ~= "\n" then
  L3_3 = L1_1
  L4_4 = "\n"
  L1_1 = L3_3 .. L4_4
  L2_2 = 0
end
L4_4 = L1_1
L3_3 = L1_1.gsub
L5_5 = "'.-\n"
L6_6 = ""
L3_3 = L3_3(L4_4, L5_5, L6_6)
L4_4 = L3_3
L3_3 = L3_3.gsub
L5_5 = "%s+"
L6_6 = ""
L4_4 = L3_3(L4_4, L5_5, L6_6)
L5_5 = #L3_3
if L5_5 > 0 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.readprotection
L6_6 = false
L5_5(L6_6)
L5_5 = mp
L5_5 = L5_5.readfile
L6_6 = mp
L6_6 = L6_6.FOOTERPAGE_SZ
L5_5 = L5_5(L6_6, L0_0 - mp.FOOTERPAGE_SZ)
if L2_2 == 0 then
  L6_6 = "'"
  L5_5 = L6_6 .. L5_5
end
L6_6 = L5_5[L5_5]
if L6_6 ~= "\n" then
  L6_6 = L5_5
  L5_5 = L6_6 .. "\n"
end
L6_6 = L5_5.gsub
L6_6 = L6_6(L5_5, "'.-\n", "")
mp.vfo_add_buffer(L6_6, "[JXSStrip]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

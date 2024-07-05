local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if L0_0 < 160 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.find
L1_1 = tostring
L2_2 = headerpage
L1_1 = L1_1(L2_2)
L2_2 = "`\000\000\000\003\000\000\160X\000\000\000\000\000\000\000"
L3_3 = 1
L4_4 = true
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0 + 15
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = false
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = L1_1
L4_4 = 81
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.match
L4_4 = tostring
L5_5 = L2_2
L4_4 = L4_4(L5_5)
L5_5 = "[^%z]+"
L3_3 = L3_3(L4_4, L5_5)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L5_5 = L3_3
L4_4 = L3_3.len
L4_4 = L4_4(L5_5)
L4_4 = L4_4 + 28
L5_5 = L4_4 + 6
L7_7 = L2_2
L6_6 = L2_2.len
L6_6 = L6_6(L7_7)
if L5_5 > L6_6 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.readu_u16
L6_6 = L2_2
L7_7 = L4_4
L5_5 = L5_5(L6_6, L7_7)
L6_6 = mp
L6_6 = L6_6.readu_u32
L7_7 = L2_2
L8_8 = L4_4 + 2
L6_6 = L6_6(L7_7, L8_8)
L7_7 = mp
L7_7 = L7_7.bitor
L8_8 = mp
L8_8 = L8_8.shl64
L9_9 = L6_6
L10_10 = 16
L8_8 = L8_8(L9_9, L10_10)
L9_9 = L5_5
L7_7 = L7_7(L8_8, L9_9)
if L7_7 == 176857451942096 or L7_7 == 81286657363968 then
  L8_8 = mp
  L8_8 = L8_8.set_mpattribute
  L9_9 = "Lua:LNKAdwind"
  L8_8(L9_9)
end
L8_8 = L3_3
L9_9 = tostring
L10_10 = L7_7
L9_9 = L9_9(L10_10)
L8_8 = L8_8 .. L9_9
L9_9 = crypto
L9_9 = L9_9.Sha1Buffer
L10_10 = L8_8
L11_11 = 0
L12_12 = #L8_8
L9_9 = L9_9(L10_10, L11_11, L12_12)
L10_10 = mp
L10_10 = L10_10.set_mpattribute
L11_11 = "MpInternal_researchdata=LHMAD="
L12_12 = L9_9
L11_11 = L11_11 .. L12_12
L10_10(L11_11)
L10_10 = 229
L11_11 = MpCommon
L11_11 = L11_11.SNidSearch
L12_12 = L10_10
L13_13 = L9_9
L13_13 = L11_11(L12_12, L13_13)
if L11_11 then
  mp.changedetectionrecid(L13_13)
  return mp.INFECTED
end
return mp.CLEAN

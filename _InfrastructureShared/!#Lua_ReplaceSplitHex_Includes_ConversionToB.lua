local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 >= 4096 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "PACKED_WITH:[EmbeddedString]"
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = tostring
L3_3 = headerpage
L7_7 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2(L3_3))
L2_2 = string
L2_2 = L2_2.gsub
L3_3 = L1_1
L4_4 = " "
L5_5 = ""
L2_2 = L2_2(L3_3, L4_4, L5_5)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "%$(%w+)=%$(%w+)%.replace%(\"(.)\",\"0x\"%).split%(\"(.)\"%);"
L5_5 = L2_2(L3_3, L4_4)
if L2_2 == L3_3 then
  L6_6 = string
  L6_6 = L6_6.match
  L7_7 = L1_1
  L6_6 = L6_6(L7_7, "%);%$" .. L2_2 .. "=\"(..-)\";")
  if L6_6 == nil then
    L7_7 = mp
    L7_7 = L7_7.CLEAN
    return L7_7
  end
  L7_7 = string
  L7_7 = L7_7.find
  L7_7 = L7_7(L4_4, "[%^%$%(%)%%%.%[%]%*%+%-%?]")
  if L7_7 then
    L7_7 = "%"
    L4_4 = L7_7 .. L4_4
  end
  L7_7 = string
  L7_7 = L7_7.find
  L7_7 = L7_7(L5_5, "[%^%$%(%)%%%.%[%]%*%+%-%?]")
  if L7_7 then
    L7_7 = "%"
    L5_5 = L7_7 .. L5_5
  end
  L7_7 = string
  L7_7 = L7_7.gsub
  L7_7 = L7_7(L6_6, L4_4, "")
  L6_6 = L7_7
  L7_7 = string
  L7_7 = L7_7.gsub
  L7_7 = L7_7(L6_6, L5_5, "")
  L6_6 = L7_7
  L7_7 = string
  L7_7 = L7_7.len
  L7_7 = L7_7(L6_6)
  if L7_7 < 256 then
    L7_7 = mp
    L7_7 = L7_7.CLEAN
    return L7_7
  end
  L7_7 = "4D5A9000000000000000000050450000"
  L7_7 = L7_7 .. "4C010100000000000000000000000000" .. "78000F000B0100000000000000000000" .. "00000000D0000000000000000C000000" .. "00004000000100000001000004000000" .. "01000000040000000000000000300000" .. "C5000000000000000300000000000000" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "0000000000000000000000002E746578" .. "7400000000200000D000000000200000" .. "D0000000000000000000000000000000" .. "400030E0000000000000000000000000" .. L6_6
  mp.vfo_add_buffer(fastHex2Bin(L7_7, "([0-9A-Fa-f][0-9A-Fa-f])"), "[hextobin]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  return mp.INFECTED
end
L6_6 = mp
L6_6 = L6_6.CLEAN
return L6_6

local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 1024 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 > 2097152 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = tostring
L3_3 = footerpage
L2_2 = L2_2(L3_3)
L3_3 = "\".+[Ss][Pp][Ll][Ii][Tt]%([a-zA-Z0-9_]+,\"(.+)\"%)"
L3_3 = L1_1(L2_2, L3_3)
L4_4 = string
L4_4 = L4_4.gsub
L5_5 = L3_3
L6_6 = "([%.%$%%%^%+%-%*%?%(%)%{%}%[%]])"
L7_7 = "%%%1"
L5_5 = L4_4(L5_5, L6_6, L7_7)
L6_6 = string
L6_6 = L6_6.find
L7_7 = tostring
L8_8 = headerpage
L7_7 = L7_7(L8_8)
L8_8 = "\".*"
L9_9 = L4_4
L8_8 = L8_8 .. L9_9
L8_8 = L6_6(L7_7, L8_8)
L9_9 = mp
L9_9 = L9_9.readprotection
L10_10 = false
L9_9(L10_10)
L9_9 = mp
L9_9 = L9_9.getfilesize
L9_9 = L9_9()
L10_10 = mp
L10_10 = L10_10.FOOTERPAGE_SZ
L9_9 = L9_9 - L10_10
L9_9 = L9_9 + L1_1
L9_9 = L9_9 - L6_6
L9_9 = L9_9 - 1
L10_10 = mp
L10_10 = L10_10.readfile
L10_10 = L10_10(L6_6, L9_9)
mp.vfo_add_buffer(fastDec2Bin(L10_10, "(%d-)" .. L4_4), "[JXS]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.FOOTERPAGE_SZ
L1_1 = L1_1 * 3
if L0_0 < L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.find
L1_1 = tostring
L2_2 = headerpage
L1_1 = L1_1(L2_2)
L2_2 = "\"[A-Za-z0-9%+/][A-Za-z0-9%+/]=(=?)(..-)[A-Za-z0-9%+/][A-Za-z0-9%+/]="
L3_3 = L0_0(L1_1, L2_2)
L4_4 = string
L4_4 = L4_4.gsub
L5_5 = L3_3
L6_6 = "([%.%$%%%^%+%-%*%?%(%)%{%}%[%]])"
L7_7 = "%%%1"
L5_5 = L4_4(L5_5, L6_6, L7_7)
L6_6 = mp
L6_6 = L6_6.readprotection
L7_7 = false
L6_6(L7_7)
L6_6 = mp
L6_6 = L6_6.getfilesize
L6_6 = L6_6()
L6_6 = L6_6 - L0_0
if L6_6 > 2097152 then
  L6_6 = 2097152
end
L7_7 = mp
L7_7 = L7_7.readfile
L8_8 = L0_0
L7_7 = L7_7(L8_8, L6_6)
L8_8 = nil
if L2_2 == "=" then
  L8_8, L5_5 = L7_7:gsub(L4_4, ""):gsub("\".+", "")
else
  L8_8, L5_5 = L7_7:gsub(L4_4, "="):gsub("\".+", "")
end
mp.set_mpattribute("//MpBase64DecodeLongLines")
mp.vfo_add_buffer(L8_8, "[JXS64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

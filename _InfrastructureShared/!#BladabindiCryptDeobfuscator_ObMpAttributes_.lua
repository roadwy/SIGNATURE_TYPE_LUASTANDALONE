local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.HEADERPAGE_SZ
if L0_0 > L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = headerpage
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "\"(.-)\".-\"(.-)\".-%-.-%-%s-0-([1-9]%d-)%)"
L6_6 = L2_2(L3_3, L4_4)
if L4_4 == nil then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = string
L7_7 = L7_7.gsub
L8_8 = L5_5
L9_9 = "([%.%$%%%^%+%-%*%?%(%)%{%}%[%]])"
L10_10 = "%%%1"
L8_8 = L7_7(L8_8, L9_9, L10_10)
L9_9 = string
L9_9 = L9_9.format
function L10_10(A0_13)
  return _UPVALUE0_("%c", tonumber(A0_13, 10) - _UPVALUE1_)
end
L11_11 = string
L11_11 = L11_11.gsub
L12_12 = L4_4
L12_12 = L11_11(L12_12, "(%d-)" .. L7_7, L10_10, 6144)
mp.vfo_add_buffer(L11_11:sub(1, L12_12), "[DeBLAD]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
mp.set_mpattribute("//LOWFI:LUA:Bladabindi")
return mp.CLEAN

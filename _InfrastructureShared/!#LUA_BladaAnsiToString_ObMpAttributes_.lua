local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 2097152 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 0
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = tostring
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L3_3 = string
L3_3 = L3_3.find
L4_4 = L2_2
L5_5 = "\"(.-)\".-\"(.-)\".+[Ss][Pp][Ll][Ii][Tt]%(.-%- ?[0-9].-%- ?(%d-)%)"
L7_7 = L3_3(L4_4, L5_5)
if L5_5 == nil then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = string
L8_8 = L8_8.gsub
L9_9 = L6_6
L10_10 = "([%.%$%%%^%+%-%*%?%(%)%{%}%[%]])"
L11_11 = "%%%1"
L9_9 = L8_8(L9_9, L10_10, L11_11)
L11_11 = L5_5
L10_10 = L5_5.match
L12_12 = "^%d-"
L13_13 = L8_8
L12_12 = L12_12 .. L13_13 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8
L10_10 = L10_10(L11_11, L12_12)
if L10_10 == nil then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
L10_10 = string
L10_10 = L10_10.format
function L11_11(A0_14)
  return _UPVALUE0_("%c", tonumber(A0_14, 10) - _UPVALUE1_)
end
L12_12 = string
L12_12 = L12_12.gsub
L13_13 = L5_5
L13_13 = L12_12(L13_13, "(%d-)" .. L8_8, L11_11, 8000)
mp.vfo_add_buffer(L12_12:sub(1, L13_13), "[BladaToStr]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCRIPT:Worm:JS/Bondat!Crypt3"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 85000 or L0_0 > 95000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = footerpage
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = ".slice%(%w+, %w+ %+= (%d+)%)"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.match
L4_4 = L1_1
L5_5 = "return parseInt%(%w+, (%d+)%)"
L3_3 = L3_3(L4_4, L5_5)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = tonumber
L5_5 = L3_3
L4_4 = L4_4(L5_5)
L5_5 = 255
L6_6 = 0
L7_7 = nil
repeat
  L7_7 = L5_5 % L4_4
  L5_5 = L5_5 / L4_4
  L6_6 = L6_6 + 1
until L7_7 == L5_5 and L7_7 == 0
L8_8 = tonumber
L9_9 = L2_2
L8_8 = L8_8(L9_9)
L9_9 = L6_6 - 1
if L8_8 < L9_9 then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = string
L9_9 = L9_9.find
L10_10 = tostring
L11_11 = headerpage
L10_10 = L10_10(L11_11)
L11_11 = "(fromCharCode.-\")%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w"
L11_11 = L9_9(L10_10, L11_11)
if L9_9 == nil then
  L12_12 = mp
  L12_12 = L12_12.CLEAN
  return L12_12
end
L12_12 = mp
L12_12 = L12_12.readprotection
L13_13 = false
L12_12(L13_13)
L12_12 = 4500
L13_13 = mp
L13_13 = L13_13.readfile
L14_14 = #L11_11
L14_14 = L9_9 + L14_14
L14_14 = L14_14 - 1
L15_15 = L12_12 * L8_8
L15_15 = L15_15 * 2
L13_13 = L13_13(L14_14, L15_15)
if L13_13 == nil then
  L14_14 = mp
  L14_14 = L14_14.CLEAN
  return L14_14
end
L14_14 = "."
L15_15 = fastBase2Dec
L16_16 = L13_13
L18_18 = L14_14
L17_17 = L14_14.rep
L17_17 = L17_17(L18_18, L8_8)
L18_18 = L4_4
L15_15 = L15_15(L16_16, L17_17, L18_18)
if L15_15 == nil then
  L16_16 = mp
  L16_16 = L16_16.CLEAN
  return L16_16
end
L16_16 = string
L16_16 = L16_16.char
L17_17 = string
L17_17 = L17_17.byte
function L18_18(A0_19, A1_20)
  local L2_21
  L2_21 = _UPVALUE0_
  return L2_21(mp.bitxor(_UPVALUE1_(A0_19), _UPVALUE1_(A1_20)))
end
mp.vfo_add_buffer(L15_15:gsub("(.)(.)", L18_18, L12_12), "[BondatCrypt3]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

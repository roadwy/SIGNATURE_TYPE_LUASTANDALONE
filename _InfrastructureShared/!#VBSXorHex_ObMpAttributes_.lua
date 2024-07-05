local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 524288 then
  L0_0 = mp
  L0_0 = L0_0.readprotection
  L1_1 = false
  L0_0(L1_1)
  L0_0 = mp
  L0_0 = L0_0.readfile
  L1_1 = 0
  L2_2 = mp
  L2_2 = L2_2.getfilesize
  L14_14 = L2_2()
  L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L2_2())
  L1_1 = string
  L1_1 = L1_1.match
  L2_2 = L0_0
  L3_3 = ",[%s]+%)(%d)(%d)%([Ww][Rr][Hh][Cc][%s]+%("
  L2_2 = L1_1(L2_2, L3_3)
  if L2_2 == nil or L1_1 == nil then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = tonumber
  L4_4 = L1_1
  L3_3 = L3_3(L4_4)
  L4_4 = tonumber
  L5_5 = L2_2
  L4_4 = L4_4(L5_5)
  L4_4 = 10 * L4_4
  L3_3 = L3_3 + L4_4
  L5_5 = L0_0
  L4_4 = L0_0.find
  L6_6 = "&\"[%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x]"
  L4_4 = L4_4(L5_5, L6_6)
  if L4_4 == nil then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L6_6 = L0_0
  L5_5 = L0_0.match
  L7_7 = "[%x]+"
  L8_8 = L4_4 + 2
  L5_5 = L5_5(L6_6, L7_7, L8_8)
  L6_6 = nil
  L8_8 = L0_0
  L7_7 = L0_0.find
  L9_9 = "&\"[%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x]"
  L10_10 = #L5_5
  L10_10 = L4_4 + L10_10
  L10_10 = L10_10 + 3
  L7_7 = L7_7(L8_8, L9_9, L10_10)
  L4_4 = L7_7
  while L4_4 ~= nil do
    L8_8 = L0_0
    L7_7 = L0_0.match
    L9_9 = "[%x]+"
    L10_10 = L4_4 + 2
    L7_7 = L7_7(L8_8, L9_9, L10_10)
    L6_6 = L7_7
    L7_7 = L5_5
    L8_8 = L6_6
    L5_5 = L7_7 .. L8_8
    L8_8 = L0_0
    L7_7 = L0_0.find
    L9_9 = "&\"[%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x]"
    L10_10 = #L6_6
    L10_10 = L4_4 + L10_10
    L10_10 = L10_10 + 3
    L7_7 = L7_7(L8_8, L9_9, L10_10)
    L4_4 = L7_7
  end
  L7_7 = string
  L7_7 = L7_7.reverse
  L8_8 = L5_5
  L7_7 = L7_7(L8_8)
  L8_8 = {}
  L9_9, L10_10 = nil, nil
  for L14_14 = 0, 255 do
    L9_9 = string.format("%02X", L14_14)
    L10_10 = mp.bitxor(L14_14, L3_3)
    L8_8[L9_9] = string.format("%c", L10_10)
  end
  L14_14 = L8_8
  L14_14 = "[Vbs]"
  L12_12(L13_13, L14_14, mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

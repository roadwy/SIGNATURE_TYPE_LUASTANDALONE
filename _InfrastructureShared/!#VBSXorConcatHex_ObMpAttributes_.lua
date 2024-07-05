local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
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
  L13_13 = L2_2()
  L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L2_2())
  L2_2 = L0_0
  L1_1 = L0_0.find
  L3_3 = "=[%s]*\"[%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x]"
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 == nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L3_3 = L0_0
  L2_2 = L0_0.match
  L4_4 = "[%x]+"
  L5_5 = L1_1 + 2
  L2_2 = L2_2(L3_3, L4_4, L5_5)
  L3_3 = nil
  L4_4 = #L2_2
  L4_4 = L1_1 + L4_4
  L4_4 = L4_4 + 3
  L6_6 = L0_0
  L5_5 = L0_0.find
  L7_7 = "&[%s]*\"[%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x]"
  L8_8 = L4_4
  L5_5 = L5_5(L6_6, L7_7, L8_8)
  L1_1 = L5_5
  while L1_1 ~= nil do
    L6_6 = L0_0
    L5_5 = L0_0.match
    L7_7 = "[%x]+"
    L8_8 = L1_1 + 2
    L5_5 = L5_5(L6_6, L7_7, L8_8)
    L3_3 = L5_5
    L5_5 = L2_2
    L6_6 = L3_3
    L2_2 = L5_5 .. L6_6
    L5_5 = #L3_3
    L5_5 = L1_1 + L5_5
    L4_4 = L5_5 + 3
    L6_6 = L0_0
    L5_5 = L0_0.find
    L7_7 = "&[%s]*\"[%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x]"
    L8_8 = L4_4
    L5_5 = L5_5(L6_6, L7_7, L8_8)
    L1_1 = L5_5
  end
  L5_5 = string
  L5_5 = L5_5.match
  L6_6 = L0_0
  L7_7 = "[Ee][Xx][Ee][Cc][Uu][Tt][Ee][%s]*%([%a]+[%s]*%([%s]*[Cc][Hh][Rr][Ww][%s]*%([%s]*([%d]+)%.?0?[%s]*%)[%s]*,"
  L8_8 = L4_4
  L5_5 = L5_5(L6_6, L7_7, L8_8)
  if L5_5 == nil then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = tonumber
  L7_7 = L5_5
  L6_6 = L6_6(L7_7)
  L7_7 = {}
  L8_8, L9_9 = nil, nil
  for L13_13 = 0, 255 do
    L8_8 = string.format("%02x", L13_13)
    L9_9 = mp.bitxor(L13_13, L6_6)
    L7_7[L8_8] = string.format("%c", L9_9)
  end
  L13_13 = "(%x%x)"
  L13_13 = L11_11
  L12_12(L13_13, "[Vbs]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

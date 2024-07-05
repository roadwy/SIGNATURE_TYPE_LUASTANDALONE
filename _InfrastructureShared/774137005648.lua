local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = nri
L0_0 = L0_0.GetRawRequestBlob
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.byte
L2_2 = L0_0
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == 5 then
  L1_1 = string
  L1_1 = L1_1.byte
  L2_2 = L0_0
  L3_3 = 2
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 == 0 then
    L1_1 = string
    L1_1 = L1_1.byte
    L2_2 = L0_0
    L3_3 = 3
    L1_1 = L1_1(L2_2, L3_3)
  end
elseif L1_1 ~= 11 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = "([\\x00-\\xFF]+)\\x05\\x00\\x00\\x03\\x10\\x00\\x00\\x00(..)...\\x00\\x00\\x00....\\x00\\x00\\x04\\x00"
L2_2 = MpCommon
L2_2 = L2_2.BinaryRegExpSearch
L3_3 = L1_1
L4_4 = L0_0
L4_4 = L2_2(L3_3, L4_4)
if L2_2 and L4_4 then
  L5_5 = mp
  L5_5 = L5_5.readu_u16
  L6_6 = L4_4
  L7_7 = 1
  L5_5 = L5_5(L6_6, L7_7)
  L6_6 = string
  L6_6 = L6_6.sub
  L7_7 = L0_0
  L6_6 = L6_6(L7_7, #L3_3 + 1, #L3_3 + L5_5)
  L7_7 = string
  L7_7 = L7_7.sub
  L7_7 = L7_7(L6_6, -8, -2)
  if mp.readu_u32(L7_7, 1) == 0 and mp.readu_u16(L7_7, 5) == 0 and string.byte(L7_7, 7) == 0 then
    return mp.INFECTED
  end
  if MpCommon.BinaryRegExpSearch("\\x4e\\x54\\x4c\\x4d\\x53\\x53\\x50\\x00", L0_0) then
    L0_0 = L0_0:sub(-(#L3_3 + L5_5))
    while 5 > 0 and #L0_0 > #L1_1 and L2_2 do
      L2_2, L3_3, L4_4 = MpCommon.BinaryRegExpSearch(L1_1, L0_0)
      if not L2_2 or not L4_4 then
        break
      end
      L5_5 = mp.readu_u16(L4_4, 1)
      L0_0 = L0_0:sub(-(#L3_3 + L5_5))
    end
    if 5 <= 0 + 1 then
      mp.changedetectionname(4243)
      return mp.INFECTED
    end
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5

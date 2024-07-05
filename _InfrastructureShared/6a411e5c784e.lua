local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = nri
L0_0 = L0_0.GetRawRequestBlob
L0_0 = L0_0()
L1_1 = MpCommon
L1_1 = L1_1.BinaryRegExpSearch
L2_2 = "([\\x00-\\xFF]+)\\x05\\x00\\x00\\x03\\x10\\x00\\x00\\x00(..)...\\x00\\x00\\x00....\\x00\\x00\\x04\\x00"
L3_3 = L0_0
L3_3 = L1_1(L2_2, L3_3)
if L1_1 and L3_3 then
  L4_4 = mp
  L4_4 = L4_4.readu_u16
  L5_5 = L3_3
  L4_4 = L4_4(L5_5, 1)
  L5_5 = string
  L5_5 = L5_5.sub
  L5_5 = L5_5(L0_0, #L2_2 + 1, #L2_2 + L4_4)
  if MpCommon.BinaryRegExpSearch("\\x0A\\x06..\\x7F\\x35\\x01\\x00", L5_5) then
    return mp.INFECTED
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4

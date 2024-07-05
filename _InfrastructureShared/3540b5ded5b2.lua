local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = nri
L1_1 = L1_1.IsResponse
L1_1 = L1_1()
L2_2 = 16
if L1_1 then
  L3_3 = nri
  L3_3 = L3_3.GetRawResponseBlob
  L3_3 = L3_3()
  L0_0 = L3_3
else
  L3_3 = nri
  L3_3 = L3_3.GetRawRequestBlob
  L3_3 = L3_3()
  L0_0 = L3_3
end
if not L0_0 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = MpCommon
L3_3 = L3_3.BinaryRegExpSearch
L4_4 = "(...)\252SMB(....)[\001\002\003\004]...(....)"
L5_5 = L0_0
L6_6 = L3_3(L4_4, L5_5)
if not L3_3 then
  return mp.CLEAN
end
function readu32(A0_7, A1_8)
  local L2_9, L3_10, L4_11, L5_12
  L2_9 = string.byte(A0_7, A1_8)
  L3_10 = string.byte(A0_7, A1_8 + 1)
  L4_11 = string.byte(A0_7, A1_8 + 2)
  L5_12 = string.byte(A0_7, A1_8 + 3)
  return L2_9 + L3_10 * 256 + L4_11 * 65536 + L5_12 * 16777216
end
L4_4 = mp.bitand(string.byte(L4_4, 1), 1) * 65536 + string.byte(L4_4, 2) * 256 + string.byte(L4_4, 3)
L5_5 = readu32(L5_5, 1)
L6_6 = readu32(L6_6, 1)
if L5_5 > 4294967295 - L6_6 then
  return mp.INFECTED
end
if L2_2 < L4_4 and L6_6 > L4_4 - L2_2 then
  return mp.INFECTED
end
return mp.CLEAN

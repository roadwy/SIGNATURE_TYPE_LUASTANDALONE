local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
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
L2_2 = #L1_1
if L2_2 < 5000 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.UfsGetMetadataStringA
L3_3 = "dkey"
L4_4 = true
L3_3 = L2_2(L3_3, L4_4)
L5_5 = L1_1
L4_4 = L1_1.sub
L6_6 = 1
L7_7 = #L1_1
L7_7 = L7_7 - 44
L5_5 = L4_4(L5_5, L6_6, L7_7)
function L6_6(A0_8, A1_9)
  local L2_10, L3_11, L4_12, L5_13, L6_14, L7_15, L8_16, L9_17
  L2_10 = table
  L2_10 = L2_10.insert
  L3_11 = table
  L3_11 = L3_11.concat
  L4_12 = {}
  for L8_16 in L5_13(L6_14, L7_15) do
    L9_17 = L2_10
    L9_17(L4_12, L8_16:byte())
  end
  L4_12[L5_13] = 0
  for L9_17 in L6_14(L7_15, L8_16) do
    L2_10(L5_13, L9_17:byte())
    if #L5_13 > 3900 then
      break
    end
  end
  L9_17 = nil
  L9_17 = {}
  for _FORV_13_ = 1, 1500 do
    L2_10(L9_17, L8_16)
  end
  A0_8, _UPVALUE0_ = fastDec2Bin(L3_11(L9_17, ",") .. ",", "(%d-),"):sub(1, L7_15)
  return A0_8
end
L7_7 = L6_6
L7_7 = L7_7(L4_4, L3_3)
if mp.crc32(-1, L7_7, 1, 1500) == 3787559893 then
  return mp.INFECTED
end
mp.vfo_add_buffer(L7_7, "[JenxcusToStrV3]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

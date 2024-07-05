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
L2_2 = tostring
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L3_3 = string
L3_3 = L3_3.find
L4_4 = L2_2
L5_5 = "= ?%(?%(?\"(.-)\".-= ?%(?%(?\"(.-)\""
L6_6 = L3_3(L4_4, L5_5)
if L6_6 == nil then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = string
L7_7 = L7_7.len
L7_7 = L7_7(L6_6)
if L7_7 < 5000 then
  L4_4 = 1
  while true do
    L7_7 = #L6_6
    if L7_7 < 5000 then
      L7_7 = string
      L7_7 = L7_7.find
      L4_4, L6_6, L7_7 = L2_2, "= ?%(?%(?\"(.-)\"", L7_7(L2_2, "= ?%(?%(?\"(.-)\"", L4_4 + 2)
      L3_3 = L7_7
    elseif L3_3 == nil then
      break
    end
  end
end
L7_7 = #L6_6
if L7_7 < 5000 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = "PQ==LQ==PQ==LQ==PQ==LQ==PQ==LQ==PQ==LQ==IA==bQ==bw==ZA==aQ==Zg==aQ==ZQ==ZA==IA==Yg==YQ==cw==ZQ==Ng==NA==IA==bQ==YQ==cg==aw==ZQ==cg==IA==PQ==LQ==PQ==LQ==PQ==LQ==PQ==LQ==PQ==LQ=="
mp.UfsSetMetadataStringA("dkey", L5_5)
mp.vfo_add_buffer(L6_6 .. L7_7, "[JenxcusBase64Marked]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

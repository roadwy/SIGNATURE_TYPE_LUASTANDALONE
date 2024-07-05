local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 4096 or L0_0 > 16777216 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == 3203386062 then
  L1_1 = mp
  L1_1 = L1_1.readu_u32
  L2_2 = headerpage
  L1_1 = L1_1(L2_2, L3_3)
elseif L1_1 ~= 1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.crc32
L2_2 = -1
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 ~= 1098233996 then
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
L1_1 = L1_1(L2_2, L3_3)
L2_2 = 1
for L6_6 in L3_3(L4_4, L5_5) do
  if L2_2 > 5 then
    break
  end
  if #L6_6 > 4096 and #L6_6 < 16777216 then
    mp.set_mpattribute("//MpBase64DecodeLongLines")
    mp.vfo_add_buffer(L6_6, string.format("[b64netrsrc-%x]", L2_2), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    L2_2 = L2_2 + 1
  end
end
return L3_3

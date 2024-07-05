local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 1280 or L0_0 < 48 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7
}
L2_2 = 252
L3_3 = 232
L2_2 = #L1_1
L3_3 = mp
L3_3 = L3_3.bitxor
L3_3 = L3_3(L4_4, L5_5)
for L7_7 = 2, L2_2 do
  L9_9 = L3_3
  if L1_1[L7_7] ~= nil then
    L9_9 = mp.bitxor(L8_8, L1_1[L7_7])
  end
  if L9_9 ~= L3_3 then
    return mp.CLEAN
  else
    L3_3 = L9_9
  end
end
for L9_9 = 1, L0_0 do
  table.insert(L5_5, "%" .. string.format("%02X", (mp.bitxor(headerpage[L9_9], L4_4))))
end
L6_6(L7_7, L8_8)
L9_9 = "[Vatet_Crypt_v1]"
L7_7(L8_8, L9_9, mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return L7_7

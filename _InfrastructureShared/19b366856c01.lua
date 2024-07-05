local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p2
L2_2 = L0_0
L1_1 = L0_0.find
L3_3 = "DestIp=(.-;)"
L3_3 = L1_1(L2_2, L3_3)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {
  L5_5,
  L6_6,
  L7_7,
  L8_8,
  L9_9,
  "208.94.117.",
  "209.53.113."
}
L8_8 = "207.6.98."
L9_9 = "208.91.197."
for L8_8, L9_9 in L5_5(L6_6) do
  if string.find(L3_3, L9_9, 1, false) ~= nil then
    return mp.CLEAN
  end
end
return L5_5

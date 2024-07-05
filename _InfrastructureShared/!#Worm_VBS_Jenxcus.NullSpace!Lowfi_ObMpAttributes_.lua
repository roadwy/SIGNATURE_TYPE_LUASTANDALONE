local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 30000000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = headerpage
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = [[

.
.
.
.
.
.
.
.
.
]]
L4_4 = L2_2(L3_3, L4_4)
for L8_8 = 1, 100 do
  L9_9 = string
  L9_9 = L9_9.find
  L9_9 = L9_9(L1_1, [[

.
.
.
.
.
.
.
.
.
]], L3_3)
  L3_3 = L9_9(L1_1, [[

.
.
.
.
.
.
.
.
.
]], L3_3)
end
L5_5(L6_6)
if L5_5 == nil then
  return L6_6
end
L3_3 = 1
for L9_9 = 1, 1000 do
  L9_9, L3_3, L9_9 = string.find(L5_5, [[

.
.
.
.
.
.
.
.
.
]], L3_3)
end
if L3_3 > 10000 then
  return L6_6
end
return L6_6

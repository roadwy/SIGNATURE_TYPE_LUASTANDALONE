local L1_0, L2_1
L2_1 = 0
L1_0 = 4
if this_sigattrlog[1].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[2].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[3].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[4].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[5].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[6].matched then
  L2_1 = L2_1 + 2
end
if this_sigattrlog[7].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[8].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[9].matched then
  L2_1 = L2_1 + 2
end
if L1_0 <= L2_1 then
  return mp.INFECTED
end
return mp.CLEAN

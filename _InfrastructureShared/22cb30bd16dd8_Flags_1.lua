local L1_0, L2_1
L2_1 = 0
L1_0 = 2
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
  L2_1 = L2_1 + 1
end
if this_sigattrlog[7].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[8].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[9].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[10].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[11].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[12].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[13].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[14].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[15].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[16].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[17].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[18].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[19].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[20].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[21].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[22].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[23].matched then
  L2_1 = L2_1 + 1
end
if this_sigattrlog[24].matched then
  L2_1 = L2_1 + 1
end
if L1_0 <= L2_1 then
  return mp.INFECTED
end
return mp.CLEAN

local L2_0, L3_1, L4_2
L4_2 = 0
L2_0 = 3
L3_1 = 6
if this_sigattrlog[1].matched then
  L4_2 = L4_2 + 1
end
if this_sigattrlog[2].matched then
  L4_2 = L4_2 + 1
end
if this_sigattrlog[3].matched then
  L4_2 = L4_2 + 1
end
if this_sigattrlog[4].matched then
  L4_2 = L4_2 + 2
end
if this_sigattrlog[5].matched then
  L4_2 = L4_2 + 1
end
if this_sigattrlog[6].matched then
  L4_2 = L4_2 + 2
end
if this_sigattrlog[7].matched then
  L4_2 = L4_2 + 1
end
if this_sigattrlog[8].matched then
  L4_2 = L4_2 + 1
end
if this_sigattrlog[9].matched then
  L4_2 = L4_2 + 2
end
if this_sigattrlog[10].matched then
end
if this_sigattrlog[11].matched then
end
if this_sigattrlog[12].matched then
end
if this_sigattrlog[13].matched then
end
if this_sigattrlog[15].matched then
end
if this_sigattrlog[16].matched then
end
if this_sigattrlog[17].matched then
end
if this_sigattrlog[18].matched then
end
if this_sigattrlog[19].matched then
end
if this_sigattrlog[20].matched then
end
if this_sigattrlog[21].matched then
end
if this_sigattrlog[22].matched then
end
if this_sigattrlog[23].matched then
end
if this_sigattrlog[24].matched then
end
if this_sigattrlog[25].matched then
end
if this_sigattrlog[26].matched then
end
if this_sigattrlog[27].matched then
end
if this_sigattrlog[28].matched then
end
if this_sigattrlog[29].matched then
end
if this_sigattrlog[30].matched then
end
if this_sigattrlog[31].matched then
end
if this_sigattrlog[32].matched then
end
if this_sigattrlog[33].matched then
end
if this_sigattrlog[34].matched then
end
if this_sigattrlog[35].matched then
end
if this_sigattrlog[36].matched then
end
if this_sigattrlog[37].matched then
end
if L2_0 <= L4_2 and L3_1 <= 0 + 1 + 2 + 1 + 2 + 1 + 1 + 1 + 1 + 2 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 2 + 1 + 1 + 1 + 2 + 1 + 1 + 2 + 1 + 1 + 1 then
  return mp.INFECTED
end
return mp.CLEAN

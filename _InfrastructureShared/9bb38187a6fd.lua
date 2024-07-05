local L0_0, L1_1, L2_2
if this_sigattrlog[6].matched then
  L2_2 = this_sigattrlog[6].utf8p1
  if L2_2 ~= nil then
    L0_0 = L2_2
  end
end
if this_sigattrlog[7].matched then
  L2_2 = this_sigattrlog[7].utf8p1
  if L2_2 ~= nil then
    L1_1 = L2_2
  end
end
if L0_0:match("([^/]+)$") == L1_1:match("([^/]+).plist") then
  return mp.INFECTED
end
return mp.CLEAN

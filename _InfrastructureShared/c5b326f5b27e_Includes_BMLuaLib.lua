local L0_0, L1_1
if this_sigattrlog[1].matched and this_sigattrlog[1].wp2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p1
  L1_1 = this_sigattrlog[1].utf8p2
end
if this_sigattrlog[2].matched and this_sigattrlog[2].wp2 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p1
  L1_1 = this_sigattrlog[2].utf8p2
end
if this_sigattrlog[3].matched and this_sigattrlog[3].wp2 ~= nil then
  L0_0 = this_sigattrlog[3].utf8p1
  L1_1 = this_sigattrlog[3].utf8p2
end
if this_sigattrlog[4].matched and this_sigattrlog[4].wp2 ~= nil then
  L0_0 = this_sigattrlog[4].utf8p1
  L1_1 = this_sigattrlog[4].utf8p2
end
if this_sigattrlog[5].matched and this_sigattrlog[5].wp2 ~= nil then
  L0_0 = this_sigattrlog[5].utf8p1
  L1_1 = this_sigattrlog[5].utf8p2
end
if this_sigattrlog[6].matched and this_sigattrlog[6].wp2 ~= nil then
  L0_0 = this_sigattrlog[6].utf8p1
  L1_1 = this_sigattrlog[6].utf8p2
end
if L0_0 and L1_1 and (string.match(L1_1, "[/\\]admin$") ~= nil or string.match(L1_1, "[/\\][a-z]$") ~= nil) and isTainted(L0_0, "remote_file_created_taint") then
  return mp.INFECTED
end
return mp.CLEAN

local L0_0, L1_1
if this_sigattrlog[1].matched then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
  L1_1 = string.lower(this_sigattrlog[1].utf8p1)
end
if this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
  L1_1 = string.lower(this_sigattrlog[2].utf8p1)
end
if string.find(L0_0, ":\\users\\", 1, true) then
  bm.add_threat_file(L0_0)
  bm.add_threat_file(L1_1)
  return mp.INFECTED
end
return mp.CLEAN

local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 ~= nil and string.find(L0_0, "--lm", 1, true) and string.find(L0_0, "--nt", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

local L1_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L1_0 = this_sigattrlog[1].utf8p2
end
if #{
  L1_0:match("/D:(%d+)%.(%d+)%.(%d+)%.(%d+)")
} == 4 then
  return mp.CLEAN
end
return mp.INFECTED

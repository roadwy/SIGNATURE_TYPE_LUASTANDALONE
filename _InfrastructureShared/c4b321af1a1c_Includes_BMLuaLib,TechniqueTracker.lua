local L0_0, L1_1
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p1
end
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p1
end
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[3].utf8p1
end
if L0_0 then
  L1_1 = string.match(L0_0, "(/.+)%s%(deleted")
  if L1_1 then
    taint(L1_1, "deleted_path", 120)
    return mp.INFECTED
  end
end
return mp.CLEAN

local L0_0, L1_1
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p1
end
if this_sigattrlog[3].matched then
  L1_1 = this_sigattrlog[3].utf8p1
end
if L0_0 ~= nil and L1_1 ~= nil then
  L0_0 = string.lower(L0_0)
  L1_1 = string.lower(L1_1)
  if L0_0:find("\\appdata\\", 1, true) and L0_0:match("(.+\\)([^\\]+)$") == L1_1:match("(.+\\)([^\\]+)$") then
    return mp.INFECTED
  end
end
return mp.CLEAN

local L0_0, L1_1
if this_sigattrlog[8].matched and this_sigattrlog[8].utf8p1 ~= nil and this_sigattrlog[11].matched and this_sigattrlog[11].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[8].utf8p1
  L1_1 = this_sigattrlog[11].utf8p1
elseif this_sigattrlog[9].matched and this_sigattrlog[9].utf8p1 ~= nil and this_sigattrlog[12].matched and this_sigattrlog[12].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[9].utf8p1
  L1_1 = this_sigattrlog[12].utf8p1
elseif this_sigattrlog[10].matched and this_sigattrlog[10].utf8p1 ~= nil and this_sigattrlog[13].matched and this_sigattrlog[13].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[10].utf8p1
  L1_1 = this_sigattrlog[13].utf8p1
end
if L0_0 and L1_1 and L0_0:lower() ~= L1_1:lower() then
  return mp.CLEAN
end
bm.add_related_string("Office_SusCreate_B", L0_0, bm.RelatedStringBMReport)
L0_0 = mp.ContextualExpandEnvironmentVariables(L0_0)
if sysio.IsFileExists(L0_0) then
  bm.add_related_file(L0_0)
end
return mp.INFECTED

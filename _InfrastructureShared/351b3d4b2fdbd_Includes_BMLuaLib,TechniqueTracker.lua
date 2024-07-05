local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = isParentPackageManager
L1_1 = L1_1(L0_0.ppid, true)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
if this_sigattrlog[14].matched and this_sigattrlog[14].utf8p1 ~= nil then
  L1_1 = this_sigattrlog[14].utf8p1
elseif this_sigattrlog[15].matched and this_sigattrlog[15].utf8p1 ~= nil then
  L1_1 = this_sigattrlog[15].utf8p1
elseif this_sigattrlog[16].matched and this_sigattrlog[16].utf8p1 ~= nil then
  L1_1 = this_sigattrlog[16].utf8p1
elseif this_sigattrlog[17].matched and this_sigattrlog[17].utf8p1 ~= nil then
  L1_1 = this_sigattrlog[17].utf8p1
end
if L1_1 then
  bm.add_related_file(L1_1)
end
return mp.INFECTED

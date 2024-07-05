local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[5]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[5]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[5]
    L2_2 = L2_2.utf8p1
    L2_2 = L2_2.lower
    L2_2 = L2_2(L2_2)
    L0_0 = L2_2
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[6]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[6]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[6]
    L2_2 = L2_2.utf8p2
    L2_2 = L2_2.lower
    L2_2 = L2_2(L2_2)
    L1_1 = L2_2
  end
end
if L1_1 == nil or L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = bm
L2_2 = L2_2.add_related_string
L2_2("Office_SusCreate_D", L0_0, bm.RelatedStringBMReport)
L2_2 = GetFileName
L2_2 = L2_2(L0_0)
if L2_2 == nil then
  return mp.CLEAN
end
if not contains(L1_1, L2_2) then
  return mp.CLEAN
end
L0_0 = mp.ContextualExpandEnvironmentVariables(L0_0)
if sysio.IsFileExists(L0_0) then
  bm.add_related_file(L0_0)
  bm.add_threat_file(L0_0)
end
return mp.INFECTED

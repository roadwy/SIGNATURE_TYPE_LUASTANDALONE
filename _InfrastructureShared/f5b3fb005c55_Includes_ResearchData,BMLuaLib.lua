local L0_0, L1_1
L0_0 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p1)
L1_1 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[3].utf8p1)
if L0_0 ~= nil and L1_1 ~= nil then
  if sysio.IsFileExists(L0_0) and mp.IsKnownFriendlyFile(L0_0, false, false) == false then
    bm.add_related_file(L0_0)
  end
  if sysio.IsFileExists(L1_1) and mp.IsKnownFriendlyFile(L1_1, false, false) == false then
    bm.add_related_file(L1_1)
  end
  if true == true then
    add_parents()
    return mp.INFECTED
  end
end
return mp.CLEAN

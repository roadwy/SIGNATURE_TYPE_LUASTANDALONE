local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 100000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0, L1_1 = nil, nil
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p1
end
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L1_1 = this_sigattrlog[2].utf8p1
end
if L0_0 ~= nil and L1_1 ~= nil then
  L0_0 = mp.ContextualExpandEnvironmentVariables(L0_0)
  L1_1 = mp.ContextualExpandEnvironmentVariables(L1_1)
  if mp.IsKnownFriendlyFile(L0_0, true, false) and sysio.IsFileExists(L1_1) and not mp.IsKnownFriendlyFile(L1_1, true, false) then
    bm.add_related_file(L1_1)
    return mp.INFECTED
  end
end
return mp.CLEAN

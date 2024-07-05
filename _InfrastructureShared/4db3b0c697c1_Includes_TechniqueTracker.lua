local L0_0
L0_0 = IsLegacyOrgMachine
L0_0 = L0_0()
if not L0_0 then
  L0_0 = IsTechniqueObservedForPid
  L0_0 = L0_0("BM", "ttexclusion")
  if not L0_0 then
    L0_0 = IsTacticObservedForPid
    L0_0 = L0_0("BM", "ttexclusion")
    if not L0_0 then
      L0_0 = IsTacticObservedForPid
      L0_0 = L0_0("BM", "ttexclusion_cln")
    end
  end
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p2
end
if L0_0 == nil then
  return mp.CLEAN
end
if string.len(L0_0) >= 700 then
  AddResearchData("BM", true)
  return mp.INFECTED
end
return mp.CLEAN

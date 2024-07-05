local L0_0
L0_0 = IsLegacyOrgMachine
L0_0 = L0_0()
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 == nil then
  return mp.CLEAN
end
if string.len(L0_0) < 700 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1059.001", "PowershellEncodedCommandGTE700")
return mp.INFECTED

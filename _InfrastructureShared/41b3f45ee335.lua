local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "WPADExploitAttempt.detected.P1"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0, L1_1 = nil, nil
L1_1 = string.lower(string.sub(this_sigattrlog[3].utf8p1, -12))
if L1_1 == nil or string.find(L1_1, "^%%", 0) then
  return mp.CLEAN
end
L0_0 = this_sigattrlog[3].utf8p1
L0_0 = MpCommon.PathToWin32Path(L0_0)
if sysio.IsFileExists(L0_0) then
  bm.add_related_file(L0_0)
end
return mp.INFECTED

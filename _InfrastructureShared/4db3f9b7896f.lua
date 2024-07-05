local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "WPADProcess"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L0_0 = L1_1.utf8p1
L1_1 = string
L1_1 = L1_1.lower
L2_2 = string
L2_2 = L2_2.sub
L2_2 = L2_2(L0_0, -12)
L1_1 = L1_1(L2_2, L2_2(L0_0, -12))
if L1_1 == nil or L1_1 == "werfault.exe" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.utf8p1
L2_2 = mp.ContextualExpandEnvironmentVariables(L2_2)
if sysio.IsFileExists(L2_2) then
  bm.add_related_file(L2_2)
  mp.ReportLowfi(L2_2, 1402450356)
end
if sysio.IsFileExists(L0_0) then
  bm.add_related_file(L0_0)
end
mp.set_mpattribute("WPADExploitAttempt.detected")
return mp.INFECTED

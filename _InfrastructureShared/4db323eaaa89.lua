local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "WPADExploitAttempt.seen"
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
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.lower
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.utf8p2
L2_2 = L2_2(L3_3)
if L1_1 ~= nil then
  L3_3 = string
  L3_3 = L3_3.find
  L3_3 = L3_3(L1_1, "rundll32.exe", 1, true)
  if L3_3 then
    L3_3 = string
    L3_3 = L3_3.find
    L3_3 = L3_3(L2_2, "davclnt.dll", 1, true)
    if not L3_3 then
      L3_3 = string
      L3_3 = L3_3.find
      L3_3 = L3_3(L2_2, "winethc.dll", 1, true)
    end
  end
elseif L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = this_sigattrlog
L3_3 = L3_3[3]
L3_3 = L3_3.utf8p1
if string.find(L3_3, "\\[^\\]*[a-zA-Z-][^\\]*[.]cache", 1, false) ~= nil then
  return mp.CLEAN
end
if string.find(L1_1, ":\\windows\\", 1, true) and (string.find(L1_1, "werfault.exe$", 1, false) or string.find(L1_1, "wermgr.exe$", 1, false) or string.find(L1_1, "taskhostw.exe") or string.find(L1_1, "consent.exe")) then
  return mp.CLEAN
end
if string.find(L1_1, ":\\program files", 1, true) and string.find(L1_1, "\\diebold\\warsaw\\core.exe$", 1, false) then
  return mp.CLEAN
end
if string.find(L1_1, ":\\programdata\\microsoft\\windows\\devicesoftwareupdates\\", 1, true) then
  return mp.CLEAN
end
L3_3 = mp.ContextualExpandEnvironmentVariables(L3_3)
if sysio.IsFileExists(L3_3) then
  bm.add_related_file(L3_3)
  mp.ReportLowfi(L3_3, 1402450356)
end
if sysio.IsFileExists(L0_0) then
  bm.add_related_file(L0_0)
end
return mp.INFECTED

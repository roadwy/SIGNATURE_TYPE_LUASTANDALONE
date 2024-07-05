local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "WPADExploitAttempt.detected.1"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0, L1_1, L2_2 = nil, nil, nil
L0_0 = this_sigattrlog[3].utf8p1
L1_1 = string.lower(string.sub(this_sigattrlog[3].utf8p1, -12))
L2_2 = string.lower(this_sigattrlog[3].utf8p2)
if L1_1 == nil or string.find(L1_1, "^%%", 0) or string.find(L1_1, "rundll32.exe", 1, true) and (string.find(L2_2, "davclnt.dll", 1, true) or string.find(L2_2, "winethc.dll", 1, true)) then
  return mp.CLEAN
end
if string.find(L1_1, ":\\windows\\", 1, true) and (string.find(L1_1, "taskhostw.exe") or string.find(L1_1, "consent.exe")) then
  return mp.CLEAN
end
if string.find(L1_1, ":\\program files", 1, true) and string.find(L1_1, "\\diebold\\warsaw\\core.exe$", 1, false) then
  return mp.CLEAN
end
if string.find(L1_1, ":\\programdata\\microsoft\\windows\\devicesoftwareupdates\\", 1, true) then
  return mp.CLEAN
end
if sysio.IsFileExists(L0_0) then
  bm.add_related_file(L0_0)
end
return mp.INFECTED

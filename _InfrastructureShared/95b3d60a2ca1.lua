local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[5]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[5]
  L0_0 = L1_1.utf8p1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.ContextualExpandEnvironmentVariables(L0_0))
if L1_1 ~= nil and string.len(L1_1) > 7 and ((string.find(L1_1, "\\microsoft\\onedrive\\", 1, true) or string.find(L1_1, "\\microsoft onedrive\\", 1, true)) and string.find(L1_1, "filesyncshell64.dll", 1, true) or string.find(L1_1, "\\microsoft\\teams\\", 1, true) and string.find(L1_1, "userenv.dll", 1, true)) then
  bm.add_related_file(L1_1)
  return mp.INFECTED
end
return mp.CLEAN

local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L0_0 = L1_1.utf8p2
end
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L0_0 = L1_1.utf8p2
end
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[4]
  L0_0 = L1_1.utf8p2
end
L1_1 = this_sigattrlog
L1_1 = L1_1[5]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[5]
  L0_0 = L1_1.utf8p2
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.ContextualExpandEnvironmentVariables(L0_0))
if L0_0 == nil or string.find(L0_0, "searchsettings\\nthook64.dll", 1, true) or string.find(L0_0, "searchsettings\\nthook.dll", 1, true) or string.find(L0_0, "cognitas\\csathl64.dll", 1, true) or string.find(L0_0, "cognitas\\csathl.dll", 1, true) or string.find(L0_0, "sun\\java\\deployment\\cache", 1, true) or string.find(L0_0, "surfcanyon\\iesearchplugin64.dll", 1, true) or mp.IsKnownFriendlyFile(L1_1, true, false) then
  return mp.CLEAN
end
return mp.INFECTED

local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p1
  end
end
if L0_0 ~= nil then
  L1_1 = {}
  L1_1["\\winhlp32.exe"] = true
  L1_1["\\werfault.exe"] = true
  L1_1["\\imepadsv.exe"] = true
  L1_1["\\splwow64.exe"] = true
  L1_1["\\sgtool.exe"] = true
  L1_1["\\mdm.exe"] = true
  L1_1["\\sgpicfacetool.exe"] = true
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(mp.ContextualExpandEnvironmentVariables(L0_0))
  if string.match(L2_2, "(\\[^\\]+)$") ~= nil and L1_1[string.match(L2_2, "(\\[^\\]+)$")] == true then
    return mp.CLEAN
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1

local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(this_sigattrlog[1].utf8p2)
    L0_0 = L2_2
  end
end
if L0_0 ~= nil then
  L2_2 = string
  L2_2 = L2_2.match
  L2_2 = L2_2(L0_0, "wscript.*%s+%\"?%'?(%w:\\.*%.js)")
  L1_1 = L2_2
end
if L1_1 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.ContextualExpandEnvironmentVariables
  L2_2 = L2_2(L1_1)
  if sysio.IsFileExists(L2_2) then
    bm.add_threat_file(L2_2)
  end
end
L2_2 = IsProcNameInParentProcessTree
L2_2 = L2_2("BM", "explorer.exe")
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

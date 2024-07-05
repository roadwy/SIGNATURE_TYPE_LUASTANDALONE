local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L2_2 = L2_2.utf8p2
    L2_2 = L2_2.lower
    L2_2 = L2_2(L2_2)
    L0_0 = L2_2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[5]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[5]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[5]
      L2_2 = L2_2.utf8p2
      L2_2 = L2_2.lower
      L2_2 = L2_2(L2_2)
      L0_0 = L2_2
    end
  end
end
if not L0_0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {
  "regsvr32.*%:?%.?%.?\\",
  "rundll32.*\\.*"
}
if not contains(L0_0, L2_2, false) then
  return mp.CLEAN
end
if L0_0 ~= nil then
  bm.add_related_string("proc_cmdline", L0_0, bm.RelatedStringBMReport)
end
L1_1 = extractDllForRegproc(L0_0)
if L1_1 then
  L1_1 = mp.ContextualExpandEnvironmentVariables(L1_1)
  if sysio.IsFileExists(L1_1) then
    bm.add_related_file(L1_1)
  end
end
return mp.INFECTED

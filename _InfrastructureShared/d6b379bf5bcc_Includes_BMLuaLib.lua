local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.utf8p2
    L2_2 = L2_2.lower
    L2_2 = L2_2(L2_2)
    L0_0 = L2_2
  end
else
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
  end
end
if not L0_0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = contains
L2_2 = L2_2(L0_0, {
  ".dll",
  ".ocx",
  ".cpl",
  ".xla",
  ".xlam",
  ".xll",
  ".vsto",
  ".olb",
  "--no-sandbox",
  "zebra_default.dat",
  "program files",
  "sogoutsf.ime",
  ".ax",
  ".wll",
  "setupinfobjectinstallaction",
  "openas_rundll",
  ".pdf",
  "shellexec_rundll",
  "\\windows\\installer\\",
  ".wcx",
  ".wsc",
  ".exe",
  "printui"
})
if L2_2 then
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
  if sysio.IsFileExists(L1_1) and sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L1_1) ~= 0 and (sysio.GetFileLastWriteTime(L1_1) / 10000000 - 11644473600 > MpCommon.GetCurrentTimeT() or MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L1_1) / 10000000 - 11644473600) > 3600) then
    bm.add_related_file(L1_1)
  end
end
return mp.INFECTED

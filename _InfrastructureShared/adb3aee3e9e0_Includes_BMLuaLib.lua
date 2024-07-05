local L0_0, L1_1
if this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[4].utf8p2:lower()
elseif this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[3].utf8p2:lower()
end
if not L0_0 then
  return mp.CLEAN
end
if contains(L0_0, {
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
}) then
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
    if mp.IsKnownFriendlyFile(L1_1, true, false) == false then
      bm.add_threat_file(L1_1)
    end
  end
end
return mp.INFECTED

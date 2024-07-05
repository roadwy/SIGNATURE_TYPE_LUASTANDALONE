local L0_0
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[3].utf8p2:lower()
end
if contains(L0_0, {
  "RestartHealthService.js",
  "spiceworks_upload.vbs",
  "MDRCrawler",
  "checkservices.dll",
  "SetupInfObjectInstallAction",
  "InstallFonts.vbs",
  "ClearCache.vbs"
}) then
  return mp.CLEAN
end
if contains(L0_0, "cmd.*/c", false) and contains(L0_0, {
  " regsvr32",
  " rundll32",
  " mshta",
  " bitsadmin"
}) then
  reportSessionInformation()
  add_parents()
  return mp.INFECTED
end
return mp.CLEAN

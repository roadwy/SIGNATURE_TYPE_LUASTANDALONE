local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
  bm_AddRelatedFileFromCommandLine(L0_0, nil)
  AddResearchData(this_sigattrlog[1].ppid, true)
  return mp.INFECTED
end
return mp.CLEAN

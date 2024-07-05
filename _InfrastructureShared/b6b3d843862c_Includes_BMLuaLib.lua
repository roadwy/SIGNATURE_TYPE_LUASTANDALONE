local L0_0
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[3].utf8p2
end
bm_AddRelatedFileFromCommandLine(L0_0)
return mp.INFECTED

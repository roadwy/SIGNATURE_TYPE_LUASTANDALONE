local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
  mp.ReportLowfi(L0_0, 3879253063)
end
return mp.INFECTED

local L0_0
if this_sigattrlog[5].matched then
  L0_0 = this_sigattrlog[5].utf8p1
end
if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
  mp.ReportLowfi(L0_0, 1766475964)
end
return mp.INFECTED

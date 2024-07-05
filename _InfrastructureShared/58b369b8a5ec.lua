local L0_0
if this_sigattrlog[1].matched then
  L0_0 = string.match(this_sigattrlog[2].utf8p1, "\\%l%l%l%l%l%l%l%l%.exe")
  if L0_0 ~= nil then
    mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p1), 2107638873)
    return mp.INFECTED
  end
end
return mp.CLEAN

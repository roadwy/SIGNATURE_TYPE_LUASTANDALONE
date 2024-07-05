local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[3].utf8p1 then
  L0_0 = this_sigattrlog[1].utf8p1
elseif this_sigattrlog[2].matched and this_sigattrlog[4].utf8p1 then
  L0_0 = this_sigattrlog[2].utf8p1
end
if L0_0 ~= nil then
  mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(L0_0), 4280357157)
  return mp.INFECTED
end
return mp.CLEAN

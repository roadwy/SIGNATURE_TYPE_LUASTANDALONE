local L0_0
if this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p1
elseif this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p1
elseif this_sigattrlog[5].matched then
  L0_0 = this_sigattrlog[5].utf8p1
end
if L0_0 ~= nil then
  mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(L0_0), 1783879241)
  return mp.INFECTED
end
return mp.CLEAN

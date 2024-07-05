local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil and string.lower(string.sub(L0_0, -11)) == "svchost.exe" then
  if this_sigattrlog[1].matched then
    mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[1].utf8p1), 3296241983)
  elseif this_sigattrlog[2].matched then
    mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p1), 669256468)
  elseif this_sigattrlog[3].matched then
    mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[3].utf8p1), 3230147973)
  end
  return mp.INFECTED
end
return mp.CLEAN

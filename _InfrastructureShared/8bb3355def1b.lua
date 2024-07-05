local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0:find("svchost.exe") then
  mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[1].utf8p1), 2527504772)
  return mp.INFECTED
end
return mp.CLEAN

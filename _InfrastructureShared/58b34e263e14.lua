local L0_0, L1_1
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(bm.get_imagepath())
if L1_1:find("svchost.exe") then
  L0_0 = string.match(this_sigattrlog[2].utf8p1, "\\%l%l%l%l%l%l%l%l%.exe")
  if L0_0 ~= nil then
    mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p1), 2107638873)
    return mp.INFECTED
  end
end
return mp.CLEAN

local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p1
if string.match(L1_1, "\\%l%l%l%l%l%l%l%l.exe") ~= nil then
  mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(L0_0), 83782614)
  mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(L1_1), 83782614)
  return mp.INFECTED
end
return mp.CLEAN

local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.find(L0_0, "receipt.pdf.exe") ~= nil or string.find(L0_0, "emotet_exe_e%d_[%x]+_2020%-%d%d%-%d%d__%d+") ~= nil or string.find(L0_0, "emotet_exe_e%d_%x%x%x%x%x%x+_2022%-04%-%d%d__%d%d%d%d+%._exe") ~= nil or string.find(L0_0, "571.exe.2.dr") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

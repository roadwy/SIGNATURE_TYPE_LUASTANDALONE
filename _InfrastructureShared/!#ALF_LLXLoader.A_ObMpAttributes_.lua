local L0_0, L1_1
L0_0 = {}
L0_0["excel.exe"] = ""
L0_0["windword.exe"] = ""
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))
if L0_0[L1_1] then
  return mp.INFECTED
end
return mp.CLEAN

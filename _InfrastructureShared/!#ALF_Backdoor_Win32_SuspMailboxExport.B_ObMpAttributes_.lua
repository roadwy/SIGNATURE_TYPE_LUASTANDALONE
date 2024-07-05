local L0_0, L1_1
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L0_0(L1_1, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
if L0_0 and L1_1 ~= nil and sysio.IsFileExists(L1_1) then
  mp.ReportLowfi(L1_1, 2004662694)
  return mp.INFECTED
end
return mp.CLEAN

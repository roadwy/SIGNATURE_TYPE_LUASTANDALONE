local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_PROCESSNAME)
L0_0 = L0_0(L1_1, L1_1(mp.CONTEXT_DATA_PROCESSNAME))
if L0_0 ~= "rundll32.exe" and L0_0 ~= "regsvr32.exe " then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
if IsKeyInRollingQueue("SuspExeFileDroppedViaSMB", L1_1, true) then
  return mp.INFECTED
end
return mp.CLEAN

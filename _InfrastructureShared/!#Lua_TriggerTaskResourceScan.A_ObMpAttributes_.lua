local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if sysio.IsFileExists(L0_0) then
  mp.TriggerScanResource("taskscheduler", L0_0)
  return mp.INFECTED
end
return mp.CLEAN

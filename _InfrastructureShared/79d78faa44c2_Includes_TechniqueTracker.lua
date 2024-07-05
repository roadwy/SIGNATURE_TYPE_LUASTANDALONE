if mp.GetParentProcInfo() == nil or mp.GetParentProcInfo().ppid == nil then
  return mp.CLEAN
end
if TrackCustomPersistContextNameByPPID("query", mp.GetParentProcInfo().ppid, "CapfetoxContextTriggerA") == true then
  return mp.INFECTED
end
return mp.CLEAN

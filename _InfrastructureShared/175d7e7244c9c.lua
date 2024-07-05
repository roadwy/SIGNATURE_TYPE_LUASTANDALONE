if mp.GetParentProcInfo() ~= nil and (string.lower(mp.GetParentProcInfo().image_path):find("microsoft.dcaas.domainhealthmonitor.exe") or string.lower(mp.GetParentProcInfo().image_path):find("agentservice.exe")) then
  return mp.CLEAN
end
return mp.INFECTED

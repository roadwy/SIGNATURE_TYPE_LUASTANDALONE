if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().image_path ~= nil then
  if ({
    ["microsoft.office.datacenter.torus.powershellworker.exe"] = true,
    ["citrix.wem.agent.service.exe"] = true,
    ["powershell_ise.exe"] = true,
    ["code.exe"] = true,
    ["ccmexec.exe"] = true,
    ["gpscript.exe"] = true,
    ["mpcmdrun.exe"] = true,
    ["mssense.exe"] = true,
    ["senseir.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
  if IsPidExcluded(mp.GetParentProcInfo().ppid) then
    return mp.CLEAN
  end
  if IsDetectionThresholdMet(mp.GetParentProcInfo().ppid) then
    return mp.INFECTED
  end
  return mp.LOWFI
end
return mp.CLEAN

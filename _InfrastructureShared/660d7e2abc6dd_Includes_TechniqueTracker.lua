if mp.GetParentProcInfo() ~= nil then
  if ({
    ["sdiagnhost.exe"] = true,
    ["qualysagent.exe"] = true,
    ["pulsesecureservice.exe"] = true,
    ["javaw.exe"] = true,
    ["java.exe"] = true,
    ["ruby.exe"] = true,
    ["logmein.exe"] = true,
    ["fasm.exe"] = true,
    ["911 location manager.exe"] = true,
    ["ltsvc.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1047", "windows_management_instrumentation")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
return mp.LOWFI

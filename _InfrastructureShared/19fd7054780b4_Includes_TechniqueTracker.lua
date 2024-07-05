if mp.GetParentProcInfo() ~= nil then
  if string.lower(mp.GetParentProcInfo().image_path):find("windows\\ccm\\", 1, true) then
    return mp.CLEAN
  end
  if ({
    ["ir_agent.exe"] = true,
    ["gpscript.exe"] = true,
    ["xendesktopvdasetup.exe"] = true,
    ["icaconfigconsole.exe"] = true,
    ["matrix42uemagentupdate.exe"] = true,
    ["sia2.exe"] = true,
    ["smsswd.exe"] = true,
    ["tsmanager.exe"] = true,
    ["ruby.exe"] = true,
    ["bpbkar32.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1003.005", "creddiscovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
return mp.CLEAN

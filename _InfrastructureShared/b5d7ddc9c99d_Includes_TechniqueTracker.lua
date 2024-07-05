if IsPidExcluded("CMDHSTR") then
  return mp.CLEAN
end
if mp.GetParentProcInfo() ~= nil then
  if string.lower(mp.GetParentProcInfo().image_path):find("\\colortokens\\\\lgm\\ct-lgm.exe", 1, true) or string.lower(mp.GetParentProcInfo().image_path):find("pmcsecuritysettool.exe$") or string.lower(mp.GetParentProcInfo().image_path):find("\\windows\\ccm\\tsmanager.exe", 1, true) or string.lower(mp.GetParentProcInfo().image_path):find("\\windows\\ccm\\smsswd.exe", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

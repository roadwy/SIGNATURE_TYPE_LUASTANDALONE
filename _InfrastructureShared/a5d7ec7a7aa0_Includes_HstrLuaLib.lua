if mp.GetParentProcInfo() == nil then
  return mp.CLEAN
end
if string.lower(mp.GetParentProcInfo().image_path):find("\\git", 1, true) ~= nil then
  return mp.CLEAN
end
if string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") ~= "bash.exe" then
  return mp.CLEAN
end
if CmdReportParent(566642330) then
  return mp.INFECTED
end
return mp.CLEAN

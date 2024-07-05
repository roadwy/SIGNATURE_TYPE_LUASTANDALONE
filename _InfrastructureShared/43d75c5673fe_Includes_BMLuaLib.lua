if mp.GetParentProcInfo() == nil then
  return mp.CLEAN
end
if mp.GetParentProcInfo().image_path == nil or mp.GetParentProcInfo().image_path == "" then
  return mp.CLEAN
end
if contains(mp.GetParentProcInfo().image_path, "psexesvc") then
  return mp.INFECTED
end
return mp.CLEAN

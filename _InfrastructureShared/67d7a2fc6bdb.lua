if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().image_path:match("([^\\]+)$") == "services.exe" then
  return mp.INFECTED
end
return mp.CLEAN

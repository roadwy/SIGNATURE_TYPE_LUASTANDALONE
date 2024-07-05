if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().image_path ~= nil and string.lower(string.sub(mp.GetParentProcInfo().image_path, -9)) == "httpd.exe" then
  return mp.INFECTED
end
return mp.CLEAN

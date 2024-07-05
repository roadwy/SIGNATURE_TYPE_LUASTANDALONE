if mp.GetParentProcInfo() ~= nil and string.lower(string.sub(mp.GetParentProcInfo().image_path, -11)) == "svchost.exe" then
  return mp.INFECTED
end
return mp.CLEAN

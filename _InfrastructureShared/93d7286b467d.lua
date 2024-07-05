if mp.GetParentProcInfo() ~= nil and (string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "wmiprvse.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "regsvr32.exe") then
  return mp.INFECTED
end
return mp.CLEAN

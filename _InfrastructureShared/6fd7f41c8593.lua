if mp.GetParentProcInfo() ~= nil and (string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "wmiprvse.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "mshta.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "rundll32.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "wscript.exe") then
  return mp.INFECTED
end
return mp.CLEAN

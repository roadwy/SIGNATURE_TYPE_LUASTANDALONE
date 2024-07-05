if mp.GetParentProcInfo() ~= nil and (string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "omadmclient.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "provtool.exe") then
  return mp.CLEAN
end
if versioning.IsSeville() and versioning.GetCloudBlockLevel() >= 4 then
  return mp.INFECTED
end
return mp.LOWFI

if mp.GetParentProcInfo() == nil then
  return mp.CLEAN
end
if string.lower(string.sub(mp.GetParentProcInfo().image_path, -12)) ~= "explorer.exe" then
  return mp.CLEAN
end
return mp.LOWFI

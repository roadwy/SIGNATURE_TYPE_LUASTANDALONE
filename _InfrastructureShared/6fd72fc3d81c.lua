if mp.GetParentProcInfo() == nil then
  return mp.CLEAN
end
if string.lower(string.sub(mp.GetParentProcInfo().image_path, -11)) ~= "svchost.exe" then
  return mp.CLEAN
end
if versioning.GetLocaleIdentifier() == 1049 then
  return mp.LOWFI
end
return mp.CLEAN

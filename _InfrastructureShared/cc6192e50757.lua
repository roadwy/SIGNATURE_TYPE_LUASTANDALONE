if mp.GetUACMetadata() == nil then
  return mp.CLEAN
end
if mp.GetUACMetadata().Type ~= mp.AMSI_UAC_REQUEST_TYPE_EXE then
  return mp.CLEAN
end
if string.sub(string.lower(mp.GetUACMetadata().Info.ApplicationName), -24) == "exesampleuacdetected.exe" or string.sub(string.lower(mp.GetUACMetadata().Info.CommandLine), -25) == "exesampleuacdetected.exe\"" or string.sub(string.lower(mp.GetUACMetadata().Info.CommandLine), -62) == "exesampleuacdetected-9f298338-4c4e-49e8-bd3b-9a3d453c9b79.exe\"" then
  return mp.INFECTED
end
return mp.CLEAN

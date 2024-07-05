if pcall(mp.GetParentProcInfo) and string.find(pcall(mp.GetParentProcInfo).image_path:lower(), "solarwinds.businesslayerhost.exe", 1, true) then
  return mp.LOWFI
end
return mp.CLEAN

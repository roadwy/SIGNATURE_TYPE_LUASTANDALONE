if mp.GetParentProcInfo().image_path ~= nil and string.lower(mp.GetParentProcInfo().image_path):find("onenote.exe$") then
  return mp.INFECTED
end
return mp.CLEAN

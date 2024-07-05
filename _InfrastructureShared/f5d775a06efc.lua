if mp.GetParentProcInfo() ~= nil and string.find(mp.GetParentProcInfo().image_path, "/cron", -6, true) then
  return mp.INFECTED
end
return mp.CLEAN

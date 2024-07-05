if bm.GetSignatureMatchDuration() > 18000000000 then
  return mp.CLEAN
end
if mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid) == nil or mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).image_path == nil then
  return mp.CLEAN
end
if string.lower(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).image_path):match("([^\\]+)$") == "wmiprvse.exe" then
  return mp.INFECTED
end
return mp.CLEAN

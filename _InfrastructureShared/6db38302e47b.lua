if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil and mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid) ~= nil and mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).image_path ~= nil and sysio.IsFileExists(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).image_path) then
  bm.add_related_file(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).image_path)
end
return mp.INFECTED

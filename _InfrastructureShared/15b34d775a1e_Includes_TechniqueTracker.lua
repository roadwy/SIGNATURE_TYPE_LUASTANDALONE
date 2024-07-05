if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().ppid ~= nil then
  TrackCustomPersistContextNameByPPID("set", bm.get_current_process_startup_info().ppid, "MimikatzTrigger")
  bm.request_SMS(bm.get_current_process_startup_info().ppid, "M")
end
return mp.INFECTED

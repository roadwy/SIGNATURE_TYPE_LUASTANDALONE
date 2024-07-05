if bm.get_current_process_startup_info().command_line and bm.get_current_process_startup_info().image_path then
  if string.lower(bm.get_current_process_startup_info().image_path):find("\\program files", 1, true) then
    return mp.CLEAN
  end
  bm_AddRelatedFileFromCommandLine(bm.get_current_process_startup_info().command_line, nil, nil, 1)
  triggerMemoryScanOnProcessTree(true, true, "SMS_H", 5000, "Behavior:Win32/MsilAmsiTamper.A")
  add_parents()
  return mp.INFECTED
end
return mp.CLEAN

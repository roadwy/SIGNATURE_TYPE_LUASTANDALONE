if bm.get_current_process_startup_info().ppid ~= nil and bm.get_current_process_startup_info().image_path ~= nil and bm.get_current_process_startup_info().command_line ~= nil then
  if ({
    ["cmd.exe"] = true,
    ["powershell.exe"] = true,
    ["pwsh.exe"] = true,
    ["cscript.exe"] = true,
    ["wscript.exe"] = true,
    ["mshta.exe"] = true,
    ["rundll.exe"] = true,
    ["regsvr32.exe"] = true
  })[string.lower(bm.get_current_process_startup_info().image_path):match("\\([^\\]+)$")] then
    addRelatedProcess()
    bm_AddRelatedFileFromCommandLine(bm.get_current_process_startup_info().command_line, nil, nil, 6)
  end
  AddResearchData(bm.get_current_process_startup_info().ppid, true)
end
return mp.INFECTED

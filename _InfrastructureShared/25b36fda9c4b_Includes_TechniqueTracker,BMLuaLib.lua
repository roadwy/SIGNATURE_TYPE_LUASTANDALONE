if mp.IsHipsRuleEnabled("c1db55ab-c21a-4637-bb3f-a12568109d35") then
  if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().command_line ~= nil then
    if string.lower(bm.get_current_process_startup_info().command_line):find("windows\\ccm", 1, true) then
      return mp.CLEAN
    end
    bm_AddRelatedFileFromCommandLine(bm.get_current_process_startup_info().command_line, nil, nil, 1)
    AddResearchData(bm.get_current_process_startup_info().ppid, true)
  end
  return mp.INFECTED
end
return mp.CLEAN

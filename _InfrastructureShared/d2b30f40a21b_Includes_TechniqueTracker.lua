local L0_0, L1_1, L2_2, L3_3
L0_0 = pcall
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L0_0(L1_1)
if L0_0 and L1_1 ~= nil then
  L2_2 = L1_1.command_line
  L3_3 = L1_1.ppid
  if L2_2 == nil then
    return mp.CLEAN
  end
  if L3_3 == nil then
    return mp.CLEAN
  end
  if (string.lower(L2_2):find("powershell.exe") or string.lower(L2_2).find("pwsh.exe")) and string.lower(L2_2):match("%s+[%-/]en?c?o?d?e?d?c?o?m?m?a?n?d?%s+") then
    TrackPidAndTechniqueBM(L3_3, "T1059.001", "powershell-enc")
  end
  TrackPidAndTechniqueBM(L3_3, "T1555", "rdpcreddiscovery")
  return mp.INFECTED
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

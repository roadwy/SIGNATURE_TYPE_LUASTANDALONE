local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.command_line
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L0_0.command_line)
    if StringStartsWith(L1_1, "\\\\") then
      bm_AddRelatedFileFromCommandLine(L0_0.command_line, nil)
      TrackPidAndTechniqueBM(L0_0.ppid, "T1021.002", "proc_launch_from_share")
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

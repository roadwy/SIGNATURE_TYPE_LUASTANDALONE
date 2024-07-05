local L0_0, L1_1, L2_2, L3_3
L0_0 = pcall
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L0_0(L1_1)
if L0_0 and L1_1 ~= nil then
  L2_2 = L1_1.ppid
  L3_3 = L1_1.command_line
  if L3_3 ~= nil then
    L3_3 = string.lower(L3_3)
    if L3_3:find("devenv.exe") or L3_3:find("msbuild.exe") or L3_3:find("cl.exe") then
      return mp.CLEAN
    end
    TrackPidAndTechniqueBM(L2_2, "T1543.003", "persistence")
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

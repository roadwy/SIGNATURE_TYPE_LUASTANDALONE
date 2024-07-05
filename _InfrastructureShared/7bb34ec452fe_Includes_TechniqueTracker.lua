local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.command_line
  if L1_1 ~= nil then
    L1_1 = L0_0.ppid
    if L1_1 ~= nil then
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = L0_0.command_line
      L1_1 = L1_1(L2_2)
      L2_2 = L0_0.ppid
      L4_4 = L1_1
      L3_3 = L1_1.match
      L3_3 = L3_3(L4_4, "\\conhost.exe")
      if L3_3 then
        L3_3 = TrackPidAndTechniqueBM
        L4_4 = L2_2
        L3_3(L4_4, "T1202", "indirectcmdexec")
      end
      L3_3 = bm
      L3_3 = L3_3.get_process_relationships
      L4_4 = L3_3()
      for _FORV_8_, _FORV_9_ in ipairs(L4_4) do
        TrackPidAndTechniqueBM(_FORV_9_.ppid, "T1202", "indirectcmdexec")
      end
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

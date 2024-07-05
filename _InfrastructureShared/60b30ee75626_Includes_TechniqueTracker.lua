local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.ppid
if L1_1 then
  L1_1 = L0_0.command_line
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L2_2)
    for L5_5 in L2_2(L3_3, L4_4) do
      if IsHostAttackServer(L5_5) then
        TrackPidAndTechniqueBM(L0_0.ppid, "T1057", "xfer_from_attackerserver_a")
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

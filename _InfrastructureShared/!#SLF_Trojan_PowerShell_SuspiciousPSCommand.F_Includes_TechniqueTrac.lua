local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 == L1_1 then
  L1_1 = pcall
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_AMSI_APPNAME
  L2_2 = L1_1(L2_2, L3_3)
  if L1_1 and L2_2 then
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L4_4 = mp
    L4_4 = L4_4.CONTEXT_DATA_AMSI_OPERATION_PPID
    L3_3 = L3_3(L4_4)
    L4_4 = string
    L4_4 = L4_4.lower
    L4_4 = L4_4(mp.GetProcessCommandLine(L3_3))
    if pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME) and L4_4 ~= nil and pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME) == nil then
      if string.find(L4_4, "-command", 1, true) ~= nil or string.find(L4_4, "remotesigned", 1, true) ~= nil or string.find(L4_4, "iwagaemaaablagmaawagagyabwbyacaaqwbqafuaiabha", 1, true) ~= nil then
        return mp.CLEAN
      end
      if (string.find(L4_4, "-encodedcommand", 1, true) ~= nil or string.find(L4_4, "-enc", 1, true) ~= nil) and (string.find(L4_4, "-noprofile", 1, true) ~= nil or string.find(L4_4, "-nop", 1, true) ~= nil) then
        TrackPidAndTechnique("AMSI", "T1204", "UserExecution")
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

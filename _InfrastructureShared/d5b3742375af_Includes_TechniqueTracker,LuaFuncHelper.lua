local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
  if L1_1 ~= nil then
    L1_1 = L0_0.command_line
  end
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0.command_line
L1_1 = L1_1(L2_2)
L2_2 = L0_0.ppid
if L1_1 ~= nil and L2_2 ~= nil then
  L3_3 = IsPidExcluded
  L3_3 = L3_3(L4_4)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = StringStartsWith
  L3_3 = L3_3(L4_4, L5_5)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = mp
  L3_3 = L3_3.GetExecutablesFromCommandLine
  L3_3 = L3_3(L4_4)
  if L3_3 == nil then
    return L4_4
  end
  for L7_7, L8_8 in L4_4(L5_5) do
    L9_9 = mp
    L9_9 = L9_9.ContextualExpandEnvironmentVariables
    L9_9 = L9_9(L8_8)
    L8_8 = L9_9
    if L8_8 ~= nil then
      L9_9 = string
      L9_9 = L9_9.lower
      L9_9 = L9_9(L8_8)
      if IsKeyInRollingQueue("SuspFileDroppedViaSMB", L9_9, true) then
        bm.trigger_sig("T1570", "exec_remotedroppedscript_a", L2_2)
        return mp.INFECTED
      end
      if IsKeyInRollingQueue("DroppedByPossibleRemotelyCreatedProc", L9_9, true) then
        bm.trigger_sig("T1570", "exec_remotedroppedscript_b", L2_2)
        return mp.INFECTED
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3

local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.command_line
if L1_1 then
  L2_2 = string
  L2_2 = L2_2.match
  L3_3 = L1_1
  L4_4 = "((%d+)%.(%d+)%.(%d+)%.(%d+))"
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 then
    L3_3 = "queue_remotedir_mount"
    L4_4 = "dir_name"
    L5_5 = StringSplit
    L5_5 = L5_5(L6_6, L7_7)
    if L5_5 ~= nil then
    elseif L6_6 < 4 then
      return L6_6
    end
    for L9_9, L10_10 in L6_6(L7_7) do
      if L9_9 > 1 and L10_10 ~= nil and sysio.IsFolderExists(L10_10) then
        if not IsKeyValuePairInRollingQueue(L3_3, L4_4, L10_10) then
          AppendToRollingQueue(L3_3, L4_4, L10_10, 3600)
        end
        addRelatedProcess()
        reportRelatedBmHits()
        TrackPidAndTechniqueBM("BM", "T1080", "LateralMoveMent_TaintSharedContent_SuspiciousMount")
        return mp.INFECTED
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

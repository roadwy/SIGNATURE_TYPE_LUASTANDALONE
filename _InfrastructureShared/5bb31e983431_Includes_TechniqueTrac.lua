local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = ""
L1_1 = ""
L2_2 = ""
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L1_1 = L3_3.utf8p1
  if L1_1 ~= nil then
    L4_4 = L1_1
    L3_3 = L1_1.match
    L5_5 = "(.+[//])"
    L3_3 = L3_3(L4_4, L5_5)
    L0_0 = L3_3
    L2_2 = L1_1
  end
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = bm
    L3_3 = L3_3.get_current_process_startup_info
    L3_3 = L3_3()
    L4_4 = L3_3.command_line
    if L4_4 then
      L5_5 = mp
      L5_5 = L5_5.GetExecutablesFromCommandLine
      L5_5 = L5_5(L6_6)
      if L5_5 == nil then
        return L6_6
      end
      for L9_9, L10_10 in L6_6(L7_7) do
        if L10_10 ~= nil and sysio.IsFileExists(L10_10) and string.sub(L10_10, 1, 5) == "/mnt/" then
          L0_0 = L10_10:match("(.+[//])")
          L2_2 = L10_10
        end
      end
    end
  end
end
if L0_0 == nil or L0_0 == "" or L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = taint
L4_4 = L2_2
L5_5 = "mounted_file_execution"
L3_3(L4_4, L5_5, L6_6)
L3_3 = "queue_remotedir_mount"
L4_4 = "dir_name"
L5_5 = sysio
L5_5 = L5_5.IsFolderExists
L5_5 = L5_5(L6_6)
if L5_5 then
  L5_5 = GetRollingQueueKeyValues
  L5_5 = L5_5(L6_6, L7_7)
  if L5_5 then
    for L9_9, L10_10 in L6_6(L7_7) do
      if L10_10 and string.sub(L0_0, 1, string.len(L10_10.value)) == L10_10.value then
        taint(L2_2, "remote_file_created_taint", 3600)
        bm.trigger_sig("RemoteFileCopy", L2_2)
        if this_sigattrlog[1].matched then
          bm.trigger_sig("Behavior:Linux/RemoteFileExecution.A", L2_2)
        elseif this_sigattrlog[2].matched then
          bm.trigger_sig("Behavior:Linux/RemoteMountedScriptExecution.A", L2_2)
        end
        addRelatedProcess()
        reportRelatedBmHits()
        TrackPidAndTechniqueBM("BM", "T1080", "LateralMovement_TaintSharedContent_RemoteMountedFileExecution")
        return mp.INFECTED
      end
    end
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5

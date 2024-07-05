local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p1
  end
end
L1_1 = sysio
L1_1 = L1_1.GetFileSize
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = sysio
L2_2 = L2_2.GetLastResult
L2_2 = L2_2()
L2_2 = L2_2.Success
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if L1_1 > 65536 then
  L2_2 = 65536
  L1_1 = L2_2 or L1_1
end
L2_2 = sysio
L2_2 = L2_2.ReadFile
L3_3 = L0_0
L4_4 = 0
L5_5 = L1_1
L2_2 = L2_2(L3_3, L4_4, L5_5)
L3_3 = sysio
L3_3 = L3_3.GetLastResult
L3_3 = L3_3()
L3_3 = L3_3.Success
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = crypto
L3_3 = L3_3.Sha256Buffer
L4_4 = L2_2
L5_5 = 0
L6_6 = L1_1
L3_3 = L3_3(L4_4, L5_5, L6_6)
L4_4 = GetRollingQueueKeyValue
L5_5 = "GPO-ScheduledTasks-LocalPath-Current"
L6_6 = L0_0
L4_4 = L4_4(L5_5, L6_6)
if L4_4 == L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4, L5_5, L6_6, L7_7, L8_8 = nil, nil, nil, nil, nil
L9_9 = {}
function L10_10(A0_17, A1_18, A2_19, A3_20)
  local L4_21, L5_22, L6_23, L7_24, L8_25, L9_26, L10_27, L11_28
  if not A2_19 and not A3_20 then
    return
  end
  L4_21 = string
  L4_21 = L4_21.format
  L5_22 = "%s %s"
  L6_23 = A2_19 or ""
  L7_24 = A3_20 or ""
  L4_21 = L4_21(L5_22, L6_23, L7_24)
  L5_22 = sysio
  L5_22 = L5_22.CommandLineScan
  L6_23 = L4_21
  L5_22 = L5_22(L6_23, L7_24)
  L6_23 = mp
  L6_23 = L6_23.GetExecutablesFromCommandLine
  L6_23 = L6_23(L7_24)
  for L10_27, L11_28 in L7_24(L8_25) do
    if sysio.IsFileExists(L11_28) then
      bm.add_related_file(L11_28)
    end
  end
  L4_21 = L7_24
  if L4_21 then
    L10_27 = #L4_21
  else
    L4_21 = L7_24 or "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end
  L10_27 = crypto
  L10_27 = L10_27.Sha1Buffer
  L11_28 = A0_17
  L10_27 = L10_27(L11_28, 0, #A0_17)
  L9_26.task_uid = L10_27
  L9_26.changed_time = A1_18
  L9_26.cmdline = L4_21
  L10_27 = L5_22 or false
  L9_26.scan_result = L10_27
  L7_24[L8_25] = L9_26
end
function L11_11(A0_29, A1_30, A2_31)
  if A2_31 and A1_30 then
    error("unexpected text in tag with attributes")
  elseif not _UPVALUE0_ then
    if A0_29 == "Task" or A0_29 == "ImmediateTask" then
      _UPVALUE0_ = 1
      _UPVALUE1_ = A1_30.uid or ""
      _UPVALUE2_ = A1_30.changed or ""
    elseif A0_29 == "TaskV2" or A0_29 == "ImmediateTaskV2" then
      _UPVALUE0_ = 2
      _UPVALUE1_ = A1_30.uid or ""
      _UPVALUE2_ = A1_30.changed or ""
    end
  elseif _UPVALUE0_ == 1 then
    if A0_29 == "Properties" then
      _UPVALUE3_ = A1_30.appName
      _UPVALUE4_ = A1_30.args
    end
  elseif _UPVALUE0_ == 2 then
    if A0_29 == "Command" then
      _UPVALUE3_ = A2_31
    elseif A0_29 == "Arguments" then
      _UPVALUE4_ = A2_31
    end
  end
end
function L12_12(A0_32)
  if not _UPVALUE0_ then
    return
  end
  if _UPVALUE0_ == 1 then
    if A0_32 == "Task" or A0_32 == "ImmediateTask" then
      _UPVALUE1_(_UPVALUE2_, _UPVALUE3_, _UPVALUE4_, _UPVALUE5_)
      _UPVALUE4_, _UPVALUE5_ = nil, nil
      _UPVALUE0_ = nil
      _UPVALUE2_ = nil
    end
  elseif _UPVALUE0_ == 2 then
    if A0_32 == "Exec" then
      _UPVALUE1_(_UPVALUE2_, _UPVALUE3_, _UPVALUE4_, _UPVALUE5_)
      _UPVALUE4_, _UPVALUE5_ = nil, nil
    elseif A0_32 == "TaskV2" or A0_32 == "ImmediateTaskV2" then
      _UPVALUE0_ = nil
      _UPVALUE2_ = nil
    end
  end
end
L13_13 = pcall
L14_14 = parseXML
L15_15 = L2_2
L16_16 = L11_11
L14_14 = L13_13(L14_14, L15_15, L16_16, L12_12)
if not L13_13 then
  L15_15 = bm
  L15_15 = L15_15.add_related_string
  L16_16 = "GPO-scheduledtasks-error"
  L15_15(L16_16, L14_14, bm.RelatedStringBMReport)
  L15_15 = mp
  L15_15 = L15_15.INFECTED
  return L15_15
end
L16_16 = L0_0
L15_15 = L0_0.lower
L15_15 = L15_15(L16_16)
L16_16 = L15_15
L15_15 = L15_15.match
L15_15 = L15_15(L16_16, "{([0-9a-f\\-]+)}")
L16_16 = {}
L16_16.gpo_guid = crypto.Sha1Buffer(L15_15, 0, #L15_15)
L16_16.command_lines = L9_9
bm.add_related_string("GPO-scheduledtasks-info", safeJsonSerialize(L16_16), bm.RelatedStringBMReport)
AppendToRollingQueue("GPO-ScheduledTasks-LocalPath-Current", L0_0, L3_3, 604800, 300, 1)
return mp.INFECTED

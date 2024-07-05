local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
L2_2 = true
L3_3 = false
for L7_7, L8_8 in L4_4(L5_5) do
  L9_9 = mp
  L9_9 = L9_9.bitand
  L10_10 = L8_8.reason_ex
  L9_9 = L9_9(L10_10, bm.RELATIONSHIP_CREATED)
  L10_10 = bm
  L10_10 = L10_10.RELATIONSHIP_CREATED
  if L9_9 == L10_10 then
    L10_10 = string
    L10_10 = L10_10.lower
    L10_10 = L10_10(L8_8.image_path)
    if string.find(L10_10, "\\windows\\sys", 1, true) or string.find(L10_10, "\\program files", 1, true) or string.find(L10_10, "\\choco", 1, true) or string.find(L10_10, "\\wlanscan", 1, true) or string.find(L10_10, "\\csc.exe", 1, true) or string.find(L10_10, "\\7z", 1, true) or string.find(L10_10, "\\bginfo", 1, true) or string.find(L10_10, "\\cloudbuild\\", 1, true) or string.find(L10_10, "\\winscp.exe", 1, true) or string.find(L10_10, "\\dismhost", 1, true) then
      L2_2 = false
    else
      L2_2 = true
    end
    if string.find(L10_10, "regsvr32.exe", 1, true) or string.find(L10_10, "rundll32.exe", 1, true) or string.find(L10_10, "\\java", 1, true) then
      L2_2 = true
    end
    if L2_2 == true then
      MpCommon.TurnNriOnProcess(L8_8.ppid)
      bm.trigger_sig("AmsiDownloadExecProc", "Trigger", L8_8.ppid)
      L3_3 = true
    end
  end
end
if L3_3 == true then
  return L4_4
end
return L4_4

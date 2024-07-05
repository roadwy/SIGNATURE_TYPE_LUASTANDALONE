local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = MpCommon
L1_1 = L1_1.GetProcessProtection
L2_2 = L0_0.ppid
L2_2 = L1_1(L2_2)
if L1_1 and L1_1 > 0 or L2_2 and L2_2 ~= 0 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3, L4_4 = nil, nil
L5_5 = this_sigattrlog
L5_5 = L5_5[16]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[16]
  L3_3 = L5_5.utf8p1
  L5_5 = this_sigattrlog
  L5_5 = L5_5[16]
  L4_4 = L5_5.ppid
else
  L5_5 = this_sigattrlog
  L5_5 = L5_5[17]
  L5_5 = L5_5.matched
  if L5_5 then
    L5_5 = this_sigattrlog
    L5_5 = L5_5[17]
    L3_3 = L5_5.utf8p1
    L5_5 = this_sigattrlog
    L5_5 = L5_5[17]
    L4_4 = L5_5.ppid
  end
end
L5_5 = MpCommon
L5_5 = L5_5.StringRegExpSearch
L6_6 = "(?i)(?:\\\\program\\sfiles(?:\\s\\(x86\\))?|%program_files%)\\\\([^\\\\]+)(\\\\[^\\\\]+\\\\)?"
L7_7 = L3_3
L7_7 = L5_5(L6_6, L7_7)
if not L5_5 then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = L6_6 or ""
L9_9 = L8_8
L10_10 = L7_7 or ""
L9_9 = L9_9 .. L10_10
if L9_9 == "" then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
L10_10 = "programfiles_Net"
L11_11 = startTrackingApp
L12_12 = L4_4.ppid
L12_12 = L11_11(L12_12, L9_9, L10_10)
if not L11_11 then
  L12_12.SignatureName = "SetProcAttributeGen.A"
  L12_12.ProcessName = L3_3
  bm.trigger_sig("ProcAttribError", safeJsonSerialize(L12_12))
elseif next(L12_12) and L12_12.IsNewApp then
  L12_12.SignatureName = "SetProcAttributeGen.A"
  L12_12.ProcessName = L3_3
  bm.trigger_sig("SetProcessAttrib", safeJsonSerialize(L12_12))
end
return mp.CLEAN

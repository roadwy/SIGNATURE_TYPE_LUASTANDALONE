local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0.command_line
L1_1 = L1_1(L2_2)
L2_2 = false
L3_3 = bm
L3_3 = L3_3.get_process_relationships
L4_4 = L3_3()
for L8_8, L9_9 in L5_5(L6_6) do
  L10_10 = L9_9.image_path
  if L10_10 ~= nil then
    L10_10 = string
    L10_10 = L10_10.lower
    L10_10 = L10_10(MpCommon.PathToWin32Path(L9_9.image_path))
    if mp.bitand(L9_9.reason_ex, 1) == 1 then
      L2_2 = true
    end
    if mp.bitand(L9_9.reason_ex, 1) == 1 and mp.IsKnownFriendlyFile(L10_10, true, false) or mp.bitand(L9_9.reason_ex, 1) == 1 and (string.find(L10_10, ":\\windows\\", 1, true) or string.find(L10_10, ":\\$windows.~bt\\", 1, true) or string.find(L10_10, ":\\program files (x86)\\", 1, true) or string.find(L10_10, ":\\program files\\", 1, true)) then
      return mp.CLEAN
    end
  end
end
if L2_2 == false then
  return L5_5
end
if L1_1 ~= nil then
  for L9_9, L10_10 in L6_6(L7_7) do
    L10_10 = mp.ContextualExpandEnvironmentVariables(L10_10)
    if sysio.IsFileExists(L10_10) then
      bm.add_related_file(L10_10)
    end
  end
end
L5_5()
L5_5()
return L5_5

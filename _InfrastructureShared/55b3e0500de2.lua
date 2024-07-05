local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
function L0_0(A0_9)
  local L1_10, L2_11, L3_12, L4_13, L5_14, L6_15
  if A0_9 ~= nil then
    L1_10 = mp
    L1_10 = L1_10.GetExecutablesFromCommandLine
    L1_10 = L1_10(L2_11)
    for L5_14, L6_15 in L2_11(L3_12) do
      L6_15 = string.lower(mp.ContextualExpandEnvironmentVariables(L6_15))
      if string.find(L6_15, "cmstp.exe$") == nil and sysio.IsFileExists(L6_15) then
        bm.add_related_file(L6_15)
      end
    end
  end
end
add_related_file_wrapper = L0_0
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.image_path
  if L7_7 ~= nil then
    L7_7 = mp
    L7_7 = L7_7.bitand
    L8_8 = L6_6.reason_ex
    L7_7 = L7_7(L8_8, 1)
    L8_8 = string
    L8_8 = L8_8.lower
    L8_8 = L8_8(MpCommon.PathToWin32Path(L6_6.image_path))
    if L7_7 == 1 and (string.find(L8_8, "vpn", 1, true) or string.find(L8_8, ":\\users\\", 1, true) or string.find(L8_8, "\\msiexe.exe", 1, true) or string.find(L8_8, ":\\program files", 1, true) or string.find(L8_8, ":\\windows\\immersivecontrolpanel\\systemsettings.exe", 1, true)) then
      return mp.CLEAN
    end
  end
end
if L2_2 then
  if L2_2 ~= nil then
    L2_2(L3_3)
  end
end
if L2_2 then
  if L2_2 ~= nil then
    L2_2(L3_3)
  end
end
if L2_2 then
  if L2_2 ~= nil then
    L2_2(L3_3)
  end
end
return L2_2

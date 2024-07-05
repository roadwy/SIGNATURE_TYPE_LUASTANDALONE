local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
function L0_0(A0_8)
  local L1_9, L2_10, L3_11, L4_12, L5_13, L6_14
  if A0_8 ~= nil then
    L1_9 = mp
    L1_9 = L1_9.GetExecutablesFromCommandLine
    L1_9 = L1_9(L2_10)
    for L5_13, L6_14 in L2_10(L3_11) do
      L6_14 = mp.ContextualExpandEnvironmentVariables(L6_14)
      if sysio.IsFileExists(L6_14) then
        bm.add_related_file(L6_14)
      end
    end
  end
end
add_related_file_wrapper = L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = add_related_file_wrapper
    L0_0(L1_1)
  end
end
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = add_related_file_wrapper
    L0_0(L1_1)
  end
end
L0_0 = MpCommon
L0_0 = L0_0.GetPersistContextNoPath
L0_0 = L0_0(L1_1)
if L0_0 then
  for L4_4, L5_5 in L1_1(L2_2) do
    L6_6 = string
    L6_6 = L6_6.match
    L7_7 = L5_5
    L7_7 = L6_6(L7_7, "(.+);ImagePath:(.+)")
    if L7_7 then
      L7_7 = MpCommon.PathToWin32Path(L7_7)
      if sysio.IsFileExists(L7_7) then
        mp.ReportLowfi(L7_7, 3039453400)
      end
    end
  end
end
return L1_1

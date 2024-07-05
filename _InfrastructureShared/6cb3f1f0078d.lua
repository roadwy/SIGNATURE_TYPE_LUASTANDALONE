local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L2_2 = bm
L2_2 = L2_2.get_process_relationships
L3_3 = L2_2()
if L3_3 ~= nil then
  for L7_7, L8_8 in L4_4(L5_5) do
    L9_9 = L8_8.image_path
    if L9_9 ~= nil then
      L9_9 = L8_8.reason
      if L9_9 == bm.RELATIONSHIP_INJECTION then
        L9_9 = string
        L9_9 = L9_9.lower
        L9_9 = L9_9(MpCommon.PathToWin32Path(L8_8.image_path))
        if not string.find(L9_9, "\\system32\\svchost.exe", -21, true) or not string.find(L9_9, "\\syswow64\\svchost.exe", -21, true) then
          return mp.CLEAN
        end
        L0_0 = L8_8.ppid
      end
    end
  end
end
if L2_2 ~= nil then
  for L7_7, L8_8 in L4_4(L5_5) do
    L9_9 = L8_8.image_path
    if L9_9 ~= nil then
      L9_9 = string
      L9_9 = L9_9.lower
      L9_9 = L9_9(MpCommon.PathToWin32Path(L8_8.image_path))
      L1_1 = L9_9
      L9_9 = sysio
      L9_9 = L9_9.IsFileExists
      L9_9 = L9_9(L1_1)
      if L9_9 then
        L9_9 = mp
        L9_9 = L9_9.IsKnownFriendlyFile
        L9_9 = L9_9(L1_1, true, false)
        if not L9_9 then
          L9_9 = bm
          L9_9 = L9_9.add_related_file
          L9_9(L1_1)
        end
      end
    end
  end
end
if L0_0 ~= nil and L1_1 ~= nil then
  L4_4(L5_5, L6_6)
  L4_4(L5_5, L6_6)
  L4_4(L5_5, L6_6)
  return L4_4
end
return L4_4

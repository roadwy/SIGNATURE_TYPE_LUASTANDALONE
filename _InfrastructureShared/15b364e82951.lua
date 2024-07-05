local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.IsKnownFriendlyFile
L3_3 = L1_1
L2_2 = L2_2(L3_3, L4_4, L5_5)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = bm
L2_2 = L2_2.get_process_relationships
L3_3 = L2_2()
for L7_7, L8_8 in L4_4(L5_5) do
  L9_9 = MpCommon
  L9_9 = L9_9.GetProcessElevationAndIntegrityLevel
  L10_10 = L8_8.ppid
  L9_9 = L9_9(L10_10)
  L10_10 = L8_8.reason
  if L10_10 == bm.RELATIONSHIP_INJECTION then
    L10_10 = L9_9.IntegrityLevel
    if L10_10 == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
      L10_10 = string
      L10_10 = L10_10.find
      L10_10 = L10_10(string.lower(L8_8.image_path), "\\windows\\", 1, true)
      if L10_10 then
        L10_10 = string
        L10_10 = L10_10.lower
        L10_10 = L10_10(bm.get_imagepath())
        if string.find(string.lower(L10_10), "\\program files\\", 1, true) or string.find(string.lower(L10_10), "\\program files (x86)\\", 1, true) or string.find(string.lower(L10_10), "\\steamapps\\common\\", 1, true) or string.find(string.lower(L10_10), "\\games\\", 1, true) then
          return mp.CLEAN
        end
        return mp.INFECTED
      end
    end
  end
end
return L4_4

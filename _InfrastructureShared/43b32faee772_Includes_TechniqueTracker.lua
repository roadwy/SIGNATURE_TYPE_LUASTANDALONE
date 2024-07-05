local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = string
L0_0 = L0_0.lower
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = bm
L2_2 = L2_2.get_imagepath
L8_8 = L2_2()
L8_8 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2())
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2()))
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  end
elseif L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
if L2_2 ~= nil then
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = L7_7.image_path
    if L8_8 ~= nil then
      L8_8 = L7_7.reason
      if L8_8 == bm.RELATIONSHIP_INJECTION then
        L8_8 = string
        L8_8 = L8_8.lower
        L8_8 = L8_8(L7_7.image_path)
        if string.find(L8_8, "\\powershell.exe", -15, true) then
          TrackPidAndTechniqueBM("BM", "T1055.002", "portable_executable_injection")
          return mp.INFECTED
        end
      end
    end
  end
end
if L1_1 ~= nil then
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = L7_7.image_path
    if L8_8 ~= nil then
      L8_8 = L7_7.reason
      if L8_8 == bm.RELATIONSHIP_INJECTION then
        L8_8 = string
        L8_8 = L8_8.lower
        L8_8 = L8_8(L7_7.image_path)
        if string.find(L8_8, "\\powershell.exe", -15, true) then
          TrackPidAndTechniqueBM("BM", "T1055.002", "portable_executable_injection")
          return mp.INFECTED
        end
      end
    end
  end
end
return L3_3

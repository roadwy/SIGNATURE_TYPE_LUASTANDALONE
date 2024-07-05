local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
L1_1 = isnull
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = isnull
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L3_3 = MpCommon
L3_3 = L3_3.GetMountedFileBackingFilePath
L3_3 = L3_3(L2_2)
if isnull(L3_3) then
  return mp.CLEAN
end
L3_3 = string.lower(L3_3)
if L3_3:match("([^.]+)$") ~= ".vhdx" then
  return mp.CLEAN
end
bm.add_related_file(L3_3)
return mp.INFECTED

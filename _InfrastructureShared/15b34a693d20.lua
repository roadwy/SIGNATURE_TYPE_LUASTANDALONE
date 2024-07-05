local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
if L0_0 ~= nil then
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = L6_6.image_path
    if L7_7 ~= nil then
      L7_7 = string
      L7_7 = L7_7.lower
      L7_7 = L7_7(MpCommon.PathToWin32Path(L6_6.image_path))
      if sysio.IsFileExists(L7_7) then
        bm.add_related_file(L7_7)
      end
    end
  end
end
return L2_2

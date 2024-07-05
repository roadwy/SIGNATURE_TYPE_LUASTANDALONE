local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = {L1_1, L2_2}
L1_1 = "cmd.exe"
L2_2 = "powershell.exe"
L1_1 = IsProcNameInParentProcessTree
L2_2 = "BM"
L1_1 = L1_1(L2_2, L3_3)
if L1_1 then
  L1_1 = bm
  L1_1 = L1_1.get_process_relationships
  L2_2 = L1_1()
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = L7_7.image_path
    if L8_8 ~= nil then
      L8_8 = bm
      L8_8 = L8_8.get_process_relationships
      L9_9 = L7_7.ppid
      L9_9 = L8_8(L9_9)
      for _FORV_13_, _FORV_14_ in L10_10(L11_11) do
        if _FORV_14_.image_path ~= nil then
          bm.add_related_file(_FORV_14_.image_path)
        end
      end
    end
  end
  return L3_3
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

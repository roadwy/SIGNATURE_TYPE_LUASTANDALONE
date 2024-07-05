local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
L2_2 = 0
if L0_0 ~= nil then
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = L7_7.image_path
    if L8_8 ~= nil then
      L8_8 = mp
      L8_8 = L8_8.ContextualExpandEnvironmentVariables
      L8_8 = L8_8(L7_7.image_path)
      if sysio.IsFileExists(L8_8) then
        bm.add_related_file(L8_8)
        L2_2 = L2_2 + 1
        if L2_2 > 2 then
          break
        end
      end
    end
  end
end
return L3_3

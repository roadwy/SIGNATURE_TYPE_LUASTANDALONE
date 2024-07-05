local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.ContextualExpandEnvironmentVariables
L2_2 = bm
L2_2 = L2_2.get_imagepath
L2_2 = L2_2()
L2_2 = L1_1(L2_2, L3_3, L4_4, L2_2())
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1(L2_2, L3_3, L4_4, L2_2()))
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L1_1 = L1_1(L2_2, L3_3, L4_4, true)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
for _FORV_6_, _FORV_7_ in L3_3(L4_4) do
  if _FORV_7_.image_path ~= nil then
    L0_0 = string.lower(mp.ContextualExpandEnvironmentVariables(_FORV_7_.image_path))
    if string.find(L0_0, "\\windows\\system32\\winlogon.exe", 1, true) then
      return mp.CLEAN
    end
  end
end
return L3_3

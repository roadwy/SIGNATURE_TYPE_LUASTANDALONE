local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.image_path
  if L7_7 ~= nil then
    L7_7 = string
    L7_7 = L7_7.find
    L8_8 = L6_6.image_path
    L7_7 = L7_7(L8_8, L9_9, L10_10, true)
    if L7_7 then
      L7_7 = mp
      L7_7 = L7_7.INFECTED
      return L7_7
    end
    L7_7 = bm
    L7_7 = L7_7.get_process_relationships
    L8_8 = L7_7()
    for _FORV_12_, _FORV_13_ in L9_9(L10_10) do
      if _FORV_13_.image_path ~= nil and string.find(_FORV_13_.image_path, "/sbin/sshd", -10, true) then
        return mp.INFECTED
      end
    end
  end
end
return L2_2

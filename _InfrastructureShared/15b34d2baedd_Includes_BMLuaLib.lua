local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.image_path
  if L7_7 ~= nil then
    L7_7 = contains
    L7_7 = L7_7(L6_6.image_path, "regsvr32.exe")
    if L7_7 then
      L7_7 = mp
      L7_7 = L7_7.INFECTED
      return L7_7
    else
      L7_7 = MpCommon
      L7_7 = L7_7.GetOriginalFileName
      L7_7 = L7_7(L6_6.image_path)
      if contains(L7_7, "regsvr32.exe") then
        return mp.INFECTED
      end
    end
  end
end
return L2_2

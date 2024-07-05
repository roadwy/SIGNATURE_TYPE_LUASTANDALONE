local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = {L1_1, L2_2}
L1_1 = "rundll32.exe"
L2_2 = "regsvr32.exe"
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
for L6_6, L7_7 in L3_3(L4_4) do
  L8_8 = L7_7.image_path
  if L8_8 ~= nil then
    L8_8 = contains
    L8_8 = L8_8(L7_7.image_path, L0_0)
    if L8_8 then
      L8_8 = mp
      L8_8 = L8_8.INFECTED
      return L8_8
    else
      L8_8 = MpCommon
      L8_8 = L8_8.GetOriginalFileName
      L8_8 = L8_8(L7_7.image_path)
      if contains(L8_8, L0_0) then
        return mp.INFECTED
      end
    end
  end
end
return L3_3

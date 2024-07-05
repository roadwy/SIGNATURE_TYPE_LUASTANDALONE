local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L2_2 = string
  L2_2 = L2_2.find
  L6_6 = true
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if L2_2 then
    L2_2 = MpCommon
    L2_2 = L2_2.GetPersistContextCountNoPath
    L2_2 = L2_2(L3_3)
    if L2_2 > 0 then
      L2_2 = MpCommon
      L2_2 = L2_2.GetPersistContextNoPath
      L2_2 = L2_2(L3_3)
      if L2_2 then
        for L6_6, L7_7 in L3_3(L4_4) do
          if string.lower(L7_7) == string.lower(L0_0.ppid) then
            if versioning.GetCloudBlockLevel() >= 4 then
              return mp.INFECTED
            end
            return mp.LOWFI
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

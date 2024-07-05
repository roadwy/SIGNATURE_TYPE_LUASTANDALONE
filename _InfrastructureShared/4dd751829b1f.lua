local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
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
  L3_3 = L1_1
  L4_4 = "\\windows\\system32\\"
  L5_5 = 1
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if L2_2 then
    L3_3 = L1_1
    L2_2 = L1_1.match
    L4_4 = "([^\\]+)$"
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 ~= "fodhelper.exe" then
      L3_3 = L1_1
      L2_2 = L1_1.match
      L4_4 = "([^\\]+)$"
      L2_2 = L2_2(L3_3, L4_4)
    elseif L2_2 == "computerdefaults.exe" then
      L2_2 = mp
      L2_2 = L2_2.GetScannedPPID
      L2_2 = L2_2()
      if L2_2 == nil then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
      L3_3 = mp
      L3_3 = L3_3.GetProcessCommandLine
      L4_4 = L2_2
      L3_3 = L3_3(L4_4)
      if L3_3 == nil then
        L4_4 = mp
        L4_4 = L4_4.CLEAN
        return L4_4
      end
      L5_5 = L3_3
      L4_4 = L3_3.match
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 == nil then
        L5_5 = mp
        L5_5 = L5_5.CLEAN
        return L5_5
      end
      L5_5 = MpCommon
      L5_5 = L5_5.GetPersistContextCountNoPath
      L5_5 = L5_5(L6_6)
      if L5_5 > 0 then
        L5_5 = MpCommon
        L5_5 = L5_5.GetPersistContextNoPath
        L5_5 = L5_5(L6_6)
        if L5_5 then
          for L9_9, L10_10 in L6_6(L7_7) do
            if string.find(L10_10, L4_4, 1, true) then
              return mp.INFECTED
            end
          end
          return L6_6
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

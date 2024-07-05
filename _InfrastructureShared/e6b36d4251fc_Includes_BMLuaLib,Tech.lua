local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = this_sigattrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[4]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil and L0_0 ~= "" then
    L1_1 = mp
    L1_1 = L1_1.GetExecutablesFromCommandLine
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    if L1_1 == nil then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = "mac_scp_file_transfer"
    L3_3 = GetRollingQueueCount
    L3_3 = L3_3(L4_4)
    if L3_3 > 0 then
      L3_3 = IsKeyInRollingQueue
      L3_3 = L3_3(L4_4, L5_5, L6_6)
      if L3_3 then
        L3_3 = GetRollingQueueKeyValues
        L3_3 = L3_3(L4_4, L5_5)
        if L3_3 ~= nil then
          if L4_4 > 0 then
            for L7_7, L8_8 in L4_4(L5_5) do
              for L12_12, L13_13 in L9_9(L10_10) do
                if string.find(L13_13, "/", 1, true) == 1 and string.find(tostring(L8_8.value), L13_13, 1, true) then
                  return mp.INFECTED
                end
              end
            end
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

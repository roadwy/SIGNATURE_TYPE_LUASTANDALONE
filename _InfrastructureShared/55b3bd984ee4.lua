local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p2
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
for L6_6, L7_7 in L3_3(L4_4) do
  L8_8 = string
  L8_8 = L8_8.lower
  L9_9 = L7_7.image_path
  L8_8 = L8_8(L9_9)
  if L8_8 ~= nil then
    L9_9 = string
    L9_9 = L9_9.find
    L13_13 = true
    L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
    if not L9_9 then
      L9_9 = string
      L9_9 = L9_9.find
      L13_13 = true
      L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
      if not L9_9 then
        L9_9 = string
        L9_9 = L9_9.find
        L13_13 = true
        L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
        if not L9_9 then
          L9_9 = string
          L9_9 = L9_9.find
          L13_13 = true
          L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
          if not L9_9 then
            L9_9 = string
            L9_9 = L9_9.find
            L13_13 = true
            L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
            if not L9_9 then
              L9_9 = string
              L9_9 = L9_9.find
              L13_13 = true
              L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
            end
          end
        end
      end
    elseif L9_9 then
      if L0_0 ~= nil then
        L9_9 = string
        L9_9 = L9_9.len
        L9_9 = L9_9(L10_10)
        if L9_9 > 3 then
          L9_9 = mp
          L9_9 = L9_9.GetExecutablesFromCommandLine
          L9_9 = L9_9(L10_10)
          if L9_9 ~= nil then
            for L13_13, L14_14 in L10_10(L11_11) do
              L14_14 = mp.ContextualExpandEnvironmentVariables(L14_14)
              bm.add_related_file(L14_14)
            end
          end
        end
      end
      L9_9 = mp
      L9_9 = L9_9.INFECTED
      return L9_9
    end
  end
end
return L3_3

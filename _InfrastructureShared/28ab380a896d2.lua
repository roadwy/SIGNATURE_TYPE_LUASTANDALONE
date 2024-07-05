local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L0_0 = L2_2.utf8p2
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L0_0 = L2_2.utf8p2
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[5]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[5]
      L0_0 = L2_2.utf8p2
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[6]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[6]
        L0_0 = L2_2.utf8p2
      end
    end
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[7]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[7]
  L1_1 = L2_2.utf8p2
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[8]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[8]
    L1_1 = L2_2.utf8p2
  end
end
L2_2 = bm
L2_2 = L2_2.get_process_relationships
L3_3 = L2_2()
if L2_2 then
  for L7_7, L8_8 in L4_4(L5_5) do
    L9_9 = L8_8.image_path
    if L9_9 then
      L9_9 = mp
      L9_9 = L9_9.bitand
      L9_9 = L9_9(L10_10, L11_11)
      if L9_9 == 1 then
        L9_9 = string
        L9_9 = L9_9.find
        L13_13 = true
        L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
        if L9_9 then
          L9_9 = nil
          if L0_0 then
            L9_9 = L10_10
            if L9_9 then
              for L13_13, L14_14 in L10_10(L11_11) do
                L14_14 = mp.ContextualExpandEnvironmentVariables(L14_14)
                if sysio.IsFileExists(L14_14) then
                  bm.add_related_file(L14_14)
                end
              end
            end
          end
          if L1_1 then
            L9_9 = L10_10
            if L9_9 then
              for L13_13, L14_14 in L10_10(L11_11) do
                L14_14 = mp.ContextualExpandEnvironmentVariables(L14_14)
                if sysio.IsFileExists(L14_14) then
                  bm.add_related_file(L14_14)
                end
              end
            end
          end
          return L10_10
        end
      end
    end
  end
end
return L4_4

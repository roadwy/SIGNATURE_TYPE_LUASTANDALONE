local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L2_2 = this_sigattrlog
L2_2 = L2_2[6]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[6]
  L0_0 = L2_2.utf8p2
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[7]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[7]
    L0_0 = L2_2.utf8p2
  end
end
if L0_0 ~= nil then
  L2_2 = string
  L2_2 = L2_2.len
  L2_2 = L2_2(L3_3)
  if L2_2 > 3 then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
    L2_2 = string
    L2_2 = L2_2.find
    L6_6 = true
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    if L2_2 == nil then
      L2_2 = string
      L2_2 = L2_2.find
      L6_6 = true
      L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
      if L2_2 == nil then
        L2_2 = string
        L2_2 = L2_2.find
        L6_6 = true
        L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
        if L2_2 == nil then
          L2_2 = string
          L2_2 = L2_2.find
          L6_6 = true
          L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
          if L2_2 == nil then
            L2_2 = string
            L2_2 = L2_2.find
            L6_6 = true
            L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
            if L2_2 == nil then
              L2_2 = string
              L2_2 = L2_2.find
              L6_6 = true
              L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
              if L2_2 == nil then
                L2_2 = string
                L2_2 = L2_2.find
                L6_6 = true
                L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
                if L2_2 == nil then
                  L2_2 = string
                  L2_2 = L2_2.find
                  L6_6 = true
                  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
                  if L2_2 == nil then
                    L2_2 = string
                    L2_2 = L2_2.find
                    L6_6 = true
                    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
                    if L2_2 == nil then
                      L2_2 = string
                      L2_2 = L2_2.find
                      L2_2 = L2_2(L3_3, L4_4)
                    end
                  end
                end
              end
            end
          end
        end
      end
    else
      if L2_2 == nil then
        L2_2 = string
        L2_2 = L2_2.find
        L2_2 = L2_2(L3_3, L4_4)
        if L2_2 == nil then
          L2_2 = string
          L2_2 = L2_2.find
          L6_6 = true
          L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
          if L2_2 == nil then
            L2_2 = string
            L2_2 = L2_2.find
            L6_6 = true
            L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
            if L2_2 == nil then
              L2_2 = string
              L2_2 = L2_2.find
              L6_6 = true
              L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
              if L2_2 == nil then
                L2_2 = string
                L2_2 = L2_2.find
                L2_2 = L2_2(L3_3, L4_4)
              end
            end
          end
        end
    end
    elseif L2_2 ~= nil then
      L2_2 = mp
      L2_2 = L2_2.GetExecutablesFromCommandLine
      L2_2 = L2_2(L3_3)
      if L2_2 ~= nil then
        for L6_6, L7_7 in L3_3(L4_4) do
          L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
          bm.add_related_file(L7_7)
        end
      end
      return L3_3
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

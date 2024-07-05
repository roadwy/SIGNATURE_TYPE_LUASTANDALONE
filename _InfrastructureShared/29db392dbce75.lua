local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L0_0 = L1_1.utf8p2
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L0_0 = L1_1.utf8p2
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[4]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L0_0 = L1_1.utf8p2
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[5]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        L0_0 = L1_1.utf8p2
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[6]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[6]
          L0_0 = L1_1.utf8p2
        else
          L1_1 = this_sigattrlog
          L1_1 = L1_1[7]
          L1_1 = L1_1.matched
          if L1_1 then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[7]
            L0_0 = L1_1.utf8p2
          else
            L1_1 = this_sigattrlog
            L1_1 = L1_1[8]
            L1_1 = L1_1.matched
            if L1_1 then
              L1_1 = this_sigattrlog
              L1_1 = L1_1[8]
              L0_0 = L1_1.utf8p2
            else
              L1_1 = this_sigattrlog
              L1_1 = L1_1[9]
              L1_1 = L1_1.matched
              if L1_1 then
                L1_1 = this_sigattrlog
                L1_1 = L1_1[9]
                L0_0 = L1_1.utf8p2
              else
                L1_1 = this_sigattrlog
                L1_1 = L1_1[10]
                L1_1 = L1_1.matched
                if L1_1 then
                  L1_1 = this_sigattrlog
                  L1_1 = L1_1[10]
                  L0_0 = L1_1.utf8p2
                else
                  L1_1 = this_sigattrlog
                  L1_1 = L1_1[11]
                  L1_1 = L1_1.matched
                  if L1_1 then
                    L1_1 = this_sigattrlog
                    L1_1 = L1_1[11]
                    L0_0 = L1_1.utf8p2
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L1_1 = L1_1(L2_2)
  if L1_1 > 3 then
    L1_1 = mp
    L1_1 = L1_1.GetExecutablesFromCommandLine
    L1_1 = L1_1(L2_2)
    if L1_1 ~= nil then
      for L5_5, L6_6 in L2_2(L3_3) do
        L6_6 = mp.ContextualExpandEnvironmentVariables(L6_6)
        bm.add_related_file(L6_6)
      end
    end
  end
end
L1_1 = string
L1_1 = L1_1.lower
L6_6 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L2_2())
L5_5 = 1
L6_6 = true
if not L2_2 then
  L5_5 = 1
  L6_6 = true
elseif L2_2 then
  return L2_2
end
return L2_2

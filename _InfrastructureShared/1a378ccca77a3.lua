local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 >= 4 then
  L0_0 = pesecs
  L0_0 = L0_0[4]
  L0_0 = L0_0.Name
  if L0_0 ~= ".Lax503" then
    L0_0 = pesecs
    L0_0 = L0_0[3]
    L0_0 = L0_0.Name
    if L0_0 ~= ".Lax503" then
      L0_0 = pesecs
      L0_0 = L0_0[2]
      L0_0 = L0_0.Name
      if L0_0 ~= ".On59" then
        L0_0 = pesecs
        L0_0 = L0_0[3]
        L0_0 = L0_0.Name
        if L0_0 ~= ".On59" then
          L0_0 = pesecs
          L0_0 = L0_0[3]
          L0_0 = L0_0.Name
          if L0_0 ~= ".Zek" then
            L0_0 = pesecs
            L0_0 = L0_0[2]
            L0_0 = L0_0.Name
            if L0_0 ~= ".Reel" then
              L0_0 = pesecs
              L0_0 = L0_0[3]
              L0_0 = L0_0.Name
              if L0_0 ~= ".Obis" then
                L0_0 = pesecs
                L0_0 = L0_0[3]
                L0_0 = L0_0.Name
                if L0_0 ~= ".mon887" then
                  L0_0 = pesecs
                  L0_0 = L0_0[3]
                  L0_0 = L0_0.Name
                  if L0_0 ~= ".Much" then
                    L0_0 = pesecs
                    L0_0 = L0_0[3]
                    L0_0 = L0_0.Name
                    if L0_0 ~= ".oypac" then
                      L0_0 = pesecs
                      L0_0 = L0_0[4]
                      L0_0 = L0_0.Name
                      if L0_0 ~= ".jibmed" then
                        L0_0 = pesecs
                        L0_0 = L0_0[4]
                        L0_0 = L0_0.Name
                        if L0_0 ~= ".Much" then
                          L0_0 = pesecs
                          L0_0 = L0_0[2]
                          L0_0 = L0_0.Name
                          if L0_0 ~= ".Waeson" then
                            L0_0 = mp
                            L0_0 = L0_0.HSTR_WEIGHT
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
      end
    end
  elseif L0_0 >= 2 then
    L0_0 = mp
    L0_0 = L0_0.INFECTED
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

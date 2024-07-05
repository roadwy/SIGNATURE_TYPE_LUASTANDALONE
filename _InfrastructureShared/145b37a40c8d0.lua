local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = nil
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
                    else
                      L1_1 = this_sigattrlog
                      L1_1 = L1_1[12]
                      L1_1 = L1_1.matched
                      if L1_1 then
                        L1_1 = this_sigattrlog
                        L1_1 = L1_1[12]
                        L0_0 = L1_1.utf8p2
                      else
                        L1_1 = this_sigattrlog
                        L1_1 = L1_1[13]
                        L1_1 = L1_1.matched
                        if L1_1 then
                          L1_1 = this_sigattrlog
                          L1_1 = L1_1[13]
                          L0_0 = L1_1.utf8p2
                        else
                          L1_1 = this_sigattrlog
                          L1_1 = L1_1[14]
                          L1_1 = L1_1.matched
                          if L1_1 then
                            L1_1 = this_sigattrlog
                            L1_1 = L1_1[14]
                            L0_0 = L1_1.utf8p2
                          else
                            L1_1 = this_sigattrlog
                            L1_1 = L1_1[15]
                            L1_1 = L1_1.matched
                            if L1_1 then
                              L1_1 = this_sigattrlog
                              L1_1 = L1_1[15]
                              L0_0 = L1_1.utf8p2
                            else
                              L1_1 = this_sigattrlog
                              L1_1 = L1_1[16]
                              L1_1 = L1_1.matched
                              if L1_1 then
                                L1_1 = this_sigattrlog
                                L1_1 = L1_1[16]
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
          end
        end
      end
    end
  end
  if not L0_0 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if not L1_1 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  if L1_1 == L0_0 then
    L2_2 = mp
    L2_2 = L2_2.INFECTED
    return L2_2
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

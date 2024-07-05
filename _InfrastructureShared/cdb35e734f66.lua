local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p1
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L0_0 = L1_1.utf8p1
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[4]
        L0_0 = L1_1.utf8p1
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[5]
          L0_0 = L1_1.utf8p1
        else
          L1_1 = this_sigattrlog
          L1_1 = L1_1[6]
          L1_1 = L1_1.matched
          if L1_1 then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[6]
            L0_0 = L1_1.utf8p1
          else
            L1_1 = this_sigattrlog
            L1_1 = L1_1[7]
            L1_1 = L1_1.matched
            if L1_1 then
              L1_1 = this_sigattrlog
              L1_1 = L1_1[7]
              L0_0 = L1_1.utf8p1
            else
              L1_1 = this_sigattrlog
              L1_1 = L1_1[8]
              L1_1 = L1_1.matched
              if L1_1 then
                L1_1 = this_sigattrlog
                L1_1 = L1_1[8]
                L0_0 = L1_1.utf8p1
              else
                L1_1 = this_sigattrlog
                L1_1 = L1_1[9]
                L1_1 = L1_1.matched
                if L1_1 then
                  L1_1 = this_sigattrlog
                  L1_1 = L1_1[9]
                  L0_0 = L1_1.utf8p1
                else
                  L1_1 = this_sigattrlog
                  L1_1 = L1_1[10]
                  L1_1 = L1_1.matched
                  if L1_1 then
                    L1_1 = this_sigattrlog
                    L1_1 = L1_1[10]
                    L0_0 = L1_1.utf8p1
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
L1_1 = nil
if L0_0 ~= nil then
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(string.sub(L0_0, -7))
  L1_1 = L2_2
  if L1_1 == "log.log" or L1_1 == "nds.txt" or L1_1 == "b_e.log" then
    L2_2 = mp
    L2_2 = L2_2.INFECTED
    return L2_2
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

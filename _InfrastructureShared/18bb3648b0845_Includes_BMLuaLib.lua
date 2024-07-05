local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p1
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.utf8p1
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L0_0 = L1_1.utf8p1
    end
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[4]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.utf8p1
      if L1_1 ~= nil then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[4]
        L0_0 = L1_1.utf8p1
      end
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[5]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        L1_1 = L1_1.utf8p1
        if L1_1 ~= nil then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[5]
          L0_0 = L1_1.utf8p1
        end
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[6]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[6]
          L1_1 = L1_1.utf8p1
          if L1_1 ~= nil then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[6]
            L0_0 = L1_1.utf8p1
          end
        else
          L1_1 = this_sigattrlog
          L1_1 = L1_1[7]
          L1_1 = L1_1.matched
          if L1_1 then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[7]
            L1_1 = L1_1.utf8p1
            if L1_1 ~= nil then
              L1_1 = this_sigattrlog
              L1_1 = L1_1[7]
              L0_0 = L1_1.utf8p1
            end
          else
            L1_1 = this_sigattrlog
            L1_1 = L1_1[8]
            L1_1 = L1_1.matched
            if L1_1 then
              L1_1 = this_sigattrlog
              L1_1 = L1_1[8]
              L1_1 = L1_1.utf8p1
              if L1_1 ~= nil then
                L1_1 = this_sigattrlog
                L1_1 = L1_1[8]
                L0_0 = L1_1.utf8p1
              end
            else
              L1_1 = this_sigattrlog
              L1_1 = L1_1[9]
              L1_1 = L1_1.matched
              if L1_1 then
                L1_1 = this_sigattrlog
                L1_1 = L1_1[9]
                L1_1 = L1_1.utf8p1
                if L1_1 ~= nil then
                  L1_1 = this_sigattrlog
                  L1_1 = L1_1[9]
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
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.match
  L1_1 = L1_1(L0_0, "imagepath:(.*)")
  if L1_1 then
    bm.add_related_file(L1_1)
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1

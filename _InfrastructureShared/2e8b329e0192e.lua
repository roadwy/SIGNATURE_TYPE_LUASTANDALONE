local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[4]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = this_sigattrlog
        L0_0 = L0_0[5]
        L0_0 = L0_0.matched
        if L0_0 then
          L0_0 = this_sigattrlog
          L0_0 = L0_0[6]
          L0_0 = L0_0.matched
          if L0_0 then
            L0_0 = this_sigattrlog
            L0_0 = L0_0[1]
            L0_0 = L0_0.utf8p1
            L1_1 = this_sigattrlog
            L1_1 = L1_1[4]
            L1_1 = L1_1.utf8p1
            if L0_0 ~= nil and L0_0 ~= "" and L1_1 ~= nil and L1_1 ~= "" and string.find(this_sigattrlog[2].utf8p2, L0_0, 1, true) and string.find(this_sigattrlog[3].utf8p2, L0_0, 1, true) and string.find(this_sigattrlog[5].utf8p2, L1_1, 1, true) and string.find(this_sigattrlog[6].utf8p2, L1_1, 1, true) then
              return mp.INFECTED
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

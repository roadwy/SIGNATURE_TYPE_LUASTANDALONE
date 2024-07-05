local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[1]
      L0_0 = L0_0.utf8p2
      if L0_0 ~= nil then
        L0_0 = this_sigattrlog
        L0_0 = L0_0[2]
        L0_0 = L0_0.utf8p1
        if L0_0 ~= nil then
          L1_1 = string
          L1_1 = L1_1.lower
          L2_2 = L0_0
          L1_1 = L1_1(L2_2)
          L2_2 = string
          L2_2 = L2_2.find
          L2_2 = L2_2(L1_1, ":\\windows\\temp\\", 1, true)
          if not L2_2 then
            L2_2 = string
            L2_2 = L2_2.find
            L2_2 = L2_2(L1_1, "\\appdata\\local\\temp\\", 1, true)
            if not L2_2 then
              L2_2 = string
              L2_2 = L2_2.find
              L2_2 = L2_2(L1_1, ":\\windows\\assembly\\", 1, true)
            end
          elseif L2_2 then
            L2_2 = mp
            L2_2 = L2_2.CLEAN
            return L2_2
          end
          L2_2 = this_sigattrlog
          L2_2 = L2_2[1]
          L2_2 = L2_2.utf8p2
          L2_2 = string.lower(L2_2)
          if string.find(L2_2, "new-object", 1, true) or string.find(L2_2, "executioncontext", 1, true) or string.find(L2_2, "webclient", 1, true) or string.find(L2_2, "newscriptblock", 1, true) or string.find(L2_2, ".download", 1, true) then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

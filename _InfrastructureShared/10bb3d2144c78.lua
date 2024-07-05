local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[5]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.utf8p2
    if L0_0 ~= nil then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[5]
      L0_0 = L0_0.utf8p2
      if L0_0 ~= nil then
        L0_0 = mp
        L0_0 = L0_0.GetExecutablesFromCommandLine
        L0_0 = L0_0(L1_1)
        if L0_0 ~= nil then
          for L4_4, L5_5 in L1_1(L2_2) do
            if string.find(this_sigattrlog[5].utf8p2, L5_5, 1, true) then
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

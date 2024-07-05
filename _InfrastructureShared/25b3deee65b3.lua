local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.match
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p1
L2_2 = "\\([%x]+)$"
L0_0 = L0_0(L1_1, L2_2)
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.len
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  if L1_1 > 31 then
    L1_1 = mp
    L1_1 = L1_1.GetMachineGUID
    L1_1 = L1_1()
    if L1_1 and L1_1 == "E7000F4C-E95C-400D-8EAB-37FF728B4EF2" then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[1]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[1]
        L2_2 = L2_2.utf8p1
        if L2_2 then
          L2_2 = mp.ContextualExpandEnvironmentVariables(L2_2)
          bm.add_related_file(L2_2)
        end
      end
      L2_2 = mp
      L2_2 = L2_2.INFECTED
      return L2_2
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

local L0_0, L1_1, L2_2, L3_3, L4_4
function L0_0(A0_5)
  if string.find(string.lower(A0_5), "powershell%.exe") == nil then
    bm.add_related_file(mp.ContextualExpandEnvironmentVariables(A0_5))
  end
end
add_it = L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.utf8p2
    for L4_4 in L1_1(L2_2, L3_3) do
      add_it(string.sub(L4_4, 2, -2))
    end
    for L4_4 in L1_1(L2_2, L3_3) do
      add_it(string.sub(L4_4, 2, -3))
    end
    for L4_4 in L1_1(L2_2, L3_3) do
      add_it(L4_4)
    end
    for L4_4 in L1_1(L2_2, L3_3) do
      add_it(L4_4)
    end
    for L4_4 in L1_1(L2_2, L3_3) do
      add_it(string.sub(L4_4, 2, -2))
    end
    for L4_4 in L1_1(L2_2, L3_3) do
      add_it(L4_4)
    end
    for L4_4 in L1_1(L2_2, L3_3) do
      add_it(L4_4)
    end
    for L4_4 in L1_1(L2_2, L3_3) do
      add_it(string.sub(L4_4, 2, -2))
    end
    for L4_4 in L1_1(L2_2, L3_3) do
      add_it(L4_4)
    end
    for L4_4 in L1_1(L2_2, L3_3) do
      add_it(L4_4)
    end
    for L4_4 in L1_1(L2_2, L3_3) do
      add_it(string.sub(L4_4, 2, -2))
    end
    for L4_4 in L1_1(L2_2, L3_3) do
      add_it(L4_4)
    end
    for L4_4 in L1_1(L2_2, L3_3) do
      add_it(L4_4)
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0

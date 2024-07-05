function add_related_file_if_exists(A0_0)
  local L1_1
  L1_1 = A0_0.matched
  if L1_1 then
    L1_1 = A0_0.utf8p2
    if L1_1 ~= nil then
      L1_1 = mp
      L1_1 = L1_1.ContextualExpandEnvironmentVariables
      L1_1 = L1_1(A0_0.utf8p2)
      bm.add_related_file(L1_1)
    end
  end
end
add_related_file_if_exists(this_sigattrlog[1])
add_related_file_if_exists(this_sigattrlog[2])
add_related_file_if_exists(this_sigattrlog[3])
add_related_file_if_exists(this_sigattrlog[4])
return mp.INFECTED

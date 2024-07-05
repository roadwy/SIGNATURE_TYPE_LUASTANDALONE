local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p1
  end
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L1_1 = L2_2.utf8p1
  end
end
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(mp.ContextualExpandEnvironmentVariables(L0_0))
L0_0 = L2_2
L2_2 = string
L2_2 = L2_2.find
L2_2 = L2_2(L0_0, "\\windows mail\\", 1, true)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(L1_1)
if string.sub(L2_2, 1, 1) == "%" and string.find(L2_2, "%commonprogramfiles%\\system", 1, true) then
  return mp.CLEAN
end
L1_1 = string.lower(mp.ContextualExpandEnvironmentVariables(L1_1))
if not string.find(L1_1, "\\outlook express\\", 1, true) then
  bm.add_related_file(L1_1)
  return mp.INFECTED
end
return mp.CLEAN

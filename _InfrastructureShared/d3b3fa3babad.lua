local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[7]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[7]
  L2_2 = L2_2.utf8p2
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
else
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.match
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, "/addfile [^ ]+ \\\\localhost\\[^ ]* [^ ]+")
  if L1_1 == nil then
    L1_1 = string
    L1_1 = L1_1.match
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, "/addfile [^ ]+ \\\\127%.0%.0%.1\\[^ ]* [^ ]+")
    if L1_1 == nil then
      L1_1 = string
      L1_1 = L1_1.match
      L2_2 = L0_0
      L1_1 = L1_1(L2_2, "/addfile [^ ]+ .:\\[^ ]* [^ ]+")
      if L1_1 == nil then
        L1_1 = string
        L1_1 = L1_1.match
        L2_2 = L0_0
        L1_1 = L1_1(L2_2, "/addfile [^ ]+ http[s]?%:%/%/[^ ]* [^ ]+")
      end
    end
  elseif L1_1 ~= nil then
    L2_2 = L0_0
    L1_1 = L0_0.match
    L1_1 = L1_1(L2_2, "[^ ]*$")
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.ContextualExpandEnvironmentVariables(L1_1))
    bm.add_related_file(L2_2)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

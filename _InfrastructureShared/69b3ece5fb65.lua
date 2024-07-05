local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[4]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = mp
    L1_1 = L1_1.ContextualExpandEnvironmentVariables
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(this_sigattrlog[4].utf8p1)
    L1_1 = L1_1(L2_2, L2_2(this_sigattrlog[4].utf8p1))
    L0_0 = L1_1
  end
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.match
L2_2 = L0_0
L1_1 = L1_1(L2_2, "(.-)[^\\]-[^\\%.]+$")
L2_2 = {
  "\\windows\\system32\\"
}
for _FORV_6_, _FORV_7_ in pairs(L2_2) do
  if #L1_1 > #_FORV_7_ and string.sub(L1_1, -#_FORV_7_) == _FORV_7_ then
    return mp.CLEAN
  end
end
return mp.INFECTED

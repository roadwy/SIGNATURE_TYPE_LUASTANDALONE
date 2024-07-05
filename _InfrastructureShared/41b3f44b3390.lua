local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p2))
    L0_0 = L1_1
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = string
      L1_1 = L1_1.lower
      L1_1 = L1_1(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[3].utf8p2))
      L0_0 = L1_1
    end
  end
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L1_1 = mp.ContextualExpandEnvironmentVariables(string.lower(this_sigattrlog[1].utf8p1))
end
if L1_1 == nil then
  return mp.CLEAN
end
if string.match(L0_0, "(.-)[^\\]-[^\\%.]+$") == nil or #string.match(L0_0, "(.-)[^\\]-[^\\%.]+$") == 0 or string.match(L1_1, "(.-)[^\\]-[^\\%.]+$") == nil or #string.match(L1_1, "(.-)[^\\]-[^\\%.]+$") == 0 then
  return mp.CLEAN
end
if string.match(L0_0, "(.-)[^\\]-[^\\%.]+$") ~= string.match(L1_1, "(.-)[^\\]-[^\\%.]+$") then
  return mp.CLEAN
end
bm.add_related_file(L0_0)
return mp.INFECTED

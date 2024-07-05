local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.ContextualExpandEnvironmentVariables
  L1_1 = L1_1(this_sigattrlog[1].utf8p2)
  L0_0 = L1_1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.ContextualExpandEnvironmentVariables
    L1_1 = L1_1(this_sigattrlog[2].utf8p2)
    L0_0 = L1_1
  else
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
L1_1 = string.match(string.lower(L0_0), "[%s]+\"?(%a:[^\"]+)\"?$")
if L1_1 == nil or L1_1 == "" then
  return mp.CLEAN
end
if sysio.IsFileExists(L1_1) then
  bm.add_related_file(L1_1)
end
L1_1 = nil
if this_sigattrlog[4].matched then
  L1_1 = this_sigattrlog[4].utf8p1
  if L1_1 ~= nil and L1_1 ~= "" and sysio.IsFileExists(L1_1) then
    bm.add_related_file(L1_1)
  end
end
L1_1 = nil
if this_sigattrlog[5].matched then
  L1_1 = this_sigattrlog[5].utf8p1
  if L1_1 ~= nil and L1_1 ~= "" and sysio.IsFileExists(L1_1) then
    bm.add_related_file(L1_1)
  end
end
return mp.INFECTED

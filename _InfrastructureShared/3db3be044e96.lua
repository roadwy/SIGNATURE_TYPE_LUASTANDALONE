local L0_0, L1_1, L2_2
function L0_0(A0_3, A1_4, A2_5)
  local L3_6, L4_7, L5_8, L6_9
  for L6_9 in L3_6(L4_7, L5_8) do
    if A2_5 <= string.len(L6_9) then
      return true
    end
  end
  return L3_6
end
checkPossibleEncoded = L0_0
L0_0 = nil
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[2]
      L0_0 = L1_1.utf8p2
    end
  end
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = string
L1_1 = L1_1.len
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 < 2048 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L1_1 = L1_1(L2_2, "%.ps1")
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = checkPossibleEncoded
L2_2 = L0_0
L1_1 = L1_1(L2_2, "%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w+", 2048)
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.match
  L2_2 = L0_0
  L2_2 = L1_1(L2_2, " ([-/]wi?n?d?o?w?s?s?t?y?l?e?)%s+(%w+)%s")
  if L2_2 == "1" or string.find(L2_2, "^hi") then
    bm.add_action("EmsScan", 5000)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

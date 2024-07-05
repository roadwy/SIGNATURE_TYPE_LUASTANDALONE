local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L0_0 = L2_2.utf8p1
  if L0_0 == nil or L0_0 == "" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L1_1 = L2_2.utf8p1
  if L1_1 == nil or L1_1 == "" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(string.gsub(L1_1, ".exe", ""))
if L2_2 == string.lower(string.gsub(L0_0, ".ahk", "")) then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

local L0_0, L1_1, L2_2
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
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L0_0 = L1_1.utf8p2
    end
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  if L1_1 < 100 then
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
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, "{%d%d?}{%d%d?}")
  if not L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = string
  L2_2 = L2_2.gsub
  L2_2 = L2_2(L0_0, "`", "")
  L1_1 = L1_1(L2_2, L2_2(L0_0, "`", ""))
  L2_2 = string
  L2_2 = L2_2.gsub
  L2_2 = L2_2(L1_1, " ", "")
  if string.find(L2_2, "/admin/", 1, true) and string.find(L2_2, "get.", 1, true) and string.find(L2_2, "php", 1, true) and string.find(L2_2, "invoke", 1, true) then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

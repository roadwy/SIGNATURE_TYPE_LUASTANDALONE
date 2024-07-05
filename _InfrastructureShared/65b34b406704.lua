local L0_0, L1_1
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
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0:match("\\([^\\]+)$"))
  if ({
    ["microsoft.com"] = true
  })[L1_1] then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

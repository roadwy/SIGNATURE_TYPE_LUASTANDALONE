local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L0_0 = L1_1.wp1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L0_0 = L1_1.wp1
  end
end
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.utf16to8
  L1_1 = L1_1(L0_0)
  if string.find(L1_1, ":\\\194\160\\[%w%s%p]+$") and string.find(L1_1, ":\\\194\160\\[^\\]+$") then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

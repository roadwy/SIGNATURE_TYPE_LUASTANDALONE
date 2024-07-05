local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(this_sigattrlog[1].utf8p2)
  L0_0 = L1_1
else
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  "sense",
  "windefend",
  "wdfilter"
}
if contains(L0_0, L1_1) then
  return mp.INFECTED
end
return mp.CLEAN

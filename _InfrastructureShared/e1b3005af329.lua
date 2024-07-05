local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[10]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[10]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[10]
    L2_2 = L2_2.utf8p1
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[11]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[11]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(this_sigattrlog[11].utf8p1)
    L1_1 = L2_2
  end
end
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {
  "windir%\\winsxs\\",
  ":windows\\winsxs\\",
  "windir%\\servicing\\",
  ":windows\\servicing\\"
}
for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
  if string.sub(L0_0, 2, #_FORV_7_) == _FORV_7_ or string.sub(L1_1, 2, #_FORV_7_) == _FORV_7_ then
    return mp.CLEAN
  end
end
bm.add_related_file(L1_1)
return mp.INFECTED

local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
end
L1_1 = {}
L1_1[".gz.en"] = true
L1_1[".u3enc"] = true
L1_1[".p7s"] = true
L1_1[".pgtmp"] = true
L1_1._temp = true
L1_1._tmp = true
L1_1._httpdltemp = true
L1_1._save = true
if isnull(L0_0) then
  return mp.CLEAN
end
if L1_1[L0_0] then
  return mp.CLEAN
end
if not StringStartsWith(L0_0, ".") then
  return mp.CLEAN
end
if mp.GetExtensionClass(L0_0) ~= 0 then
  return mp.CLEAN
end
if string.len(L0_0) < 4 or IsExtensionDatePattern(L0_0) == true or string.match(L0_0, "%d+.%d+.%d+") then
  return mp.CLEAN
end
bm.add_related_string("ransom_ext", L0_0, bm.RelatedStringBMReport)
return mp.INFECTED

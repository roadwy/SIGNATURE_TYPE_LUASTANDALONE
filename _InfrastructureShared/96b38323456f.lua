local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p1
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p2
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p2
if not string.match(L0_0, "\\Services\\([%u%d]+)\\\\ImagePath") then
  return mp.CLEAN
end
if not string.match(L1_1, "\\([%u%d]+)%.sys") then
  return mp.CLEAN
end
if string.match(L0_0, "\\Services\\([%u%d]+)\\\\ImagePath") == string.match(L1_1, "\\([%u%d]+)%.sys") then
  if sysio.IsFileExists(L1_1) then
    bm.add_related_file(L1_1)
  end
  return mp.INFECTED
end
return mp.CLEAN

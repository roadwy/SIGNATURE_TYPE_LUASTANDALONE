local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0)
  L0_0 = L1_1
  L1_1 = L0_0.find
  L1_1 = L1_1(L0_0, "\\clicktorun\\officeclicktorun.exe", 1, true)
  if L1_1 ~= nil then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
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
    L1_1 = L1_1.utf8p2
    if sysio.IsFileExists(L1_1) and mp.IsKnownFriendlyFile(L1_1, true, false) == false then
      bm.add_related_file(L1_1)
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

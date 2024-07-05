local L0_0, L1_1, L2_2
L0_0 = versioning
L0_0 = L0_0.GetEngineBuild
L0_0 = L0_0()
if L0_0 >= 16700 then
  L0_0 = versioning
  L0_0 = L0_0.GetOrgID
  L0_0 = L0_0()
  if L0_0 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    if L1_1 == "d7c7c745-195f-4223-9c7a-99fb420fd000" then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
  end
end
L0_0 = nil
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p1
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.utf8p1
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.sub
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, -4)
  L2_2 = "|.asp|aspx|ashx|asmx|"
  if string.find(L2_2, L1_1, 1, true) then
    if sysio.IsFileExists(L0_0) then
      bm.add_related_file(L0_0)
    end
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

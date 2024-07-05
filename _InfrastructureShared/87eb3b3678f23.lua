local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[17]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[17]
  L2_2 = L2_2.utf8p1
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.sub
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, -4)
  L2_2 = "|.asp|aspx|ashx|asmx|"
  if string.find(L2_2, L1_1, 1, true) then
    mp.ReportLowfi(L0_0, 3394984378)
    bm.add_related_file(L0_0)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

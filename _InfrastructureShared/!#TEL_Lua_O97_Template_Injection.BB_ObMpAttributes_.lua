local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L4_4 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1())
L2_2 = L0_0
L1_1 = L0_0.find
L3_3 = "->word/_rels/"
L4_4 = 1
L1_1 = L1_1(L2_2, L3_3, L4_4, true)
if not L1_1 then
  L2_2 = L0_0
  L1_1 = L0_0.find
  L3_3 = "/drawings/_rels/"
  L4_4 = 1
  L1_1 = L1_1(L2_2, L3_3, L4_4, true)
  if not L1_1 then
    L2_2 = L0_0
    L1_1 = L0_0.find
    L3_3 = "/worksheets/_rels/"
    L4_4 = 1
    L1_1 = L1_1(L2_2, L3_3, L4_4, true)
  end
elseif L1_1 then
  L1_1 = mp
  L1_1 = L1_1.getfilename
  L2_2 = mp
  L2_2 = L2_2.FILEPATH_QUERY_FNAME
  L1_1 = L1_1(L2_2)
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L4_4 = "->"
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = string
  L3_3 = L3_3.sub
  L4_4 = L1_1
  L3_3 = L3_3(L4_4, 0, L2_2 - 1)
  L4_4 = {}
  table.insert(L4_4, L3_3)
  MpCommon.SetPersistContextNoPath("TemplateInjc", L4_4, 100)
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

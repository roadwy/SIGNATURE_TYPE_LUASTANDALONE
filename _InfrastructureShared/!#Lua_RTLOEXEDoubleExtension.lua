local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L4_4 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1(L2_2, L3_3))
L2_2 = L0_0
L1_1 = L0_0.len
L1_1 = L1_1(L2_2)
if L1_1 < 9 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.sub
L2_2 = L0_0
L3_3 = -4
L1_1 = L1_1(L2_2, L3_3)
L2_2 = {}
L2_2[".exe"] = ""
L2_2[".scr"] = ""
L3_3 = L2_2[L1_1]
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {}
L3_3[".\174cod"] = ""
L3_3[".\174slx"] = ""
L3_3[".\174tpp"] = ""
L3_3[".\174fdp"] = ""
L3_3[".\174gpj"] = ""
L3_3[".\174fig"] = ""
L3_3[".\174gnp"] = ""
L3_3[".\174cip"] = ""
L3_3[".\174txt"] = ""
L3_3[".\1743pm"] = ""
L3_3["\174xcod"] = ""
L3_3["\174xlsx"] = ""
L3_3["\174xslx"] = ""
L3_3["\174xtpp"] = ""
L4_4 = string
L4_4 = L4_4.sub
L4_4 = L4_4(L0_0, -9)
if L3_3[string.sub(L4_4, 1, 5)] then
  mp.set_mpattribute("Lua:RTLOEXEDoubleExtension")
end
return mp.CLEAN

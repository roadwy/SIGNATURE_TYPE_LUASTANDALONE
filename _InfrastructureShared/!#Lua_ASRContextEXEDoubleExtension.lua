local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "fd960b4a-d8d7-4590-a6ce-0219df56a135"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L3_3 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2, L3_3))
L2_2 = L0_0
L1_1 = L0_0.len
L1_1 = L1_1(L2_2)
if L1_1 < 9 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1[".doc"] = ""
L1_1[".xls"] = ""
L1_1[".ppt"] = ""
L1_1[".pdf"] = ""
L1_1[".jpg"] = ""
L1_1[".gif"] = ""
L1_1[".png"] = ""
L1_1[".pic"] = ""
L1_1[".txt"] = ""
L1_1[".mp3"] = ""
L1_1["\174cod"] = ""
L1_1["\174slx"] = ""
L1_1["\174tpp"] = ""
L1_1["\174fdp"] = ""
L1_1["\174gpj"] = ""
L1_1["\174fig"] = ""
L1_1["\174gnp"] = ""
L1_1["\174cip"] = ""
L1_1["\174txt"] = ""
L1_1["\1743pm"] = ""
L2_2 = {}
L2_2[".docx"] = ""
L2_2[".xlsx"] = ""
L2_2[".pptx"] = ""
L2_2["\174xcod"] = ""
L2_2["\174xlsx"] = ""
L2_2["\174xtpp"] = ""
L3_3 = string
L3_3 = L3_3.sub
L3_3 = L3_3(L0_0, -8)
if L1_1[string.sub(L3_3, 1, 4)] and string.sub(L3_3, -4) == ".exe" then
  mp.set_mpattribute("Lua:ASRContextEXEDoubleExtension")
end
L3_3 = string.sub(L0_0, -9)
if L2_2[string.sub(L3_3, 1, 5)] and string.sub(L3_3, -4) == ".exe" then
  mp.set_mpattribute("Lua:ASRContextEXEDoubleExtension")
end
return mp.CLEAN

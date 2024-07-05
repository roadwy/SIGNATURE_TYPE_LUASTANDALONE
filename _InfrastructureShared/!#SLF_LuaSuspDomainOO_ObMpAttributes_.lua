local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 1536000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.bitor
L3_3 = L3_3(L4_4, L5_5)
L8_8 = L2_2(L3_3, L4_4)
L2_2 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2(L3_3, L4_4))
L3_3 = L1_1.find
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {}
L3_3[".xls->"] = "%.xls%->.+"
L3_3["xlsx->"] = "%.xlsx%->.+"
L3_3[".doc->"] = "%.doc%->.+"
L3_3["docx->"] = "%.docx%->.+"
L3_3[".rtf->"] = "%.rtf%->.+"
L3_3["xlsm->"] = "%.xlsm%->.+"
L3_3["xlsb->"] = "%.xlsb%->.+"
L3_3["xltx->"] = "%.xltx%->.+"
L3_3["xltm->"] = "%.xltm%->.+"
L3_3["xlam->"] = "%.xlam%->.+"
L3_3[".xla->"] = "%.xla%->.+"
L3_3["docm->"] = "%.docm%->.+"
L3_3["dotx->"] = "%.dotx%->.+"
L3_3["dotm->"] = "%.dotm%->.+"
L3_3[".ppt->"] = "%.ppt%->.+"
L3_3["pptm->"] = "%.pptm%->.+"
L3_3[".pps->"] = "%.pps%->.+"
L3_3["pptx->"] = "%.pptx%->.+"
L3_3["ppsx->"] = "%.ppsx%->.+"
L3_3[".odt->"] = "%.odt%->.+"
L3_3[".xml->"] = "%.xml%->.+"
for L7_7, L8_8 in L4_4(L5_5) do
  if string.find(L2_2, L7_7, 1, true) then
    if string.match(L2_2, L8_8) == nil or string.match(L2_2, L8_8):len() < 12 then
      return mp.CLEAN
    end
    if string.match(L2_2, L8_8):find("sheets/", 1, true) then
      return mp.INFECTED
    end
  end
end
return L4_4

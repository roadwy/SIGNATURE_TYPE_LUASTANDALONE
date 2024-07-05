local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.FILEPATH_QUERY_LOWERCASE
L0_0 = L0_0(L1_1)
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = extractAllFileNameExtensions
L2_2 = L0_0
L2_2 = L1_1(L2_2)
if L2_2 == nil or L2_2 == 0 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L2_2 > 1 then
  L3_3 = L1_1[1]
  L3_3 = L3_3 .. "|"
  if (".doc|.docx|.docm|.xls|.xlsx|.xlsm|.ppt|.pptx|.pptm|.pdf|.xps|.jpg|.jpeg|.bmp|.png|.gif|"):find(L3_3, 1, true) or (".txt|.log|.exe|.dll|.ocx|.cs|.cpp|.ps1|.psm1|.rs|.go|.json|.xml|.html|.mhtml|.h|.lib|.js|.class|.jar|.dmp|"):find(L3_3, 1, true) or (".dit|.edb|.mdb|.reg|.pdb|.bak|"):find(L3_3, 1, true) then
    if mp.GetExtensionClass(L1_1[2]) ~= 0 then
      return mp.CLEAN
    end
    mp.set_mpattribute("Lua:EnableEntropyCalc")
    return mp.INFECTED
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3

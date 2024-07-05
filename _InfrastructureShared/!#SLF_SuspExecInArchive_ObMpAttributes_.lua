local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 4194304 then
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
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_FNAME
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_PATH
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
L15_15 = L2_2(L3_3, L4_4)
L2_2 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L2_2(L3_3, L4_4))
if L1_1 ~= nil then
  L3_3 = string
  L3_3 = L3_3.len
  L4_4 = L1_1
  L3_3 = L3_3(L4_4)
elseif L3_3 < 25 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.len
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
elseif L3_3 < 15 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L4_4 = L2_2
L3_3 = L2_2.sub
L5_5 = -4
L3_3 = L3_3(L4_4, L5_5)
L5_5 = L2_2
L4_4 = L2_2.sub
L6_6 = -3
L4_4 = L4_4(L5_5, L6_6)
L5_5 = {}
L5_5[".jse"] = true
L5_5[".vbs"] = true
L5_5[".wsf"] = true
L5_5[".vbe"] = true
L5_5[".hta"] = true
L5_5[".mht"] = true
L5_5[".bat"] = true
L5_5[".ps1"] = true
L5_5[".cmd"] = true
L5_5[".url"] = true
L5_5[".jar"] = true
L5_5[".lnk"] = true
L5_5[".exe"] = true
L5_5[".scr"] = true
L5_5[".pif"] = true
L5_5[".docx"] = true
L5_5[".xlsx"] = true
L5_5[".doc"] = true
L5_5[".xls"] = true
L5_5[".rtf"] = true
L5_5.docm = true
L5_5.xlsm = true
L5_5.ppam = true
L5_5.pptm = true
L5_5.ppsm = true
L5_5.potm = true
L5_5[".js"] = true
L6_6 = L5_5[L3_3]
if L6_6 ~= true then
  L6_6 = L5_5[L4_4]
elseif L6_6 == true then
  L6_6 = {}
  L6_6[".zip)->"] = "%.zip%)%->.+"
  L6_6[".rar)->"] = "%.rar%)%->.+"
  L6_6[".7z)->"] = "%.7z%)%->.+"
  L6_6[".iso)->"] = "%.iso%)%->.+"
  L6_6[".arj)->"] = "%.arj%)%->.+"
  L6_6[".gz)->"] = "%.gz%)%->.+"
  L6_6[".ace)->"] = "%.ace%)%->.+"
  L6_6[".z)->"] = "%.z%)%->.+"
  L6_6[".xz)->"] = "%.xz%)%->.+"
  L6_6[".bz)->"] = "%.bz%)%->.+"
  L6_6[".rev)->"] = "%.rev%)%->.+"
  L6_6[".r00)->"] = "%.r00%)%->.+"
  for L10_10, L11_11 in L7_7(L8_8) do
    L12_12 = string
    L12_12 = L12_12.find
    L13_13 = L2_2
    L14_14 = L10_10
    L15_15 = 1
    L12_12 = L12_12(L13_13, L14_14, L15_15, true)
    if L12_12 then
      L12_12 = string
      L12_12 = L12_12.match
      L13_13 = L2_2
      L14_14 = L11_11
      L12_12 = L12_12(L13_13, L14_14)
      if L12_12 ~= nil then
        L14_14 = L12_12
        L13_13 = L12_12.len
        L13_13 = L13_13(L14_14)
      elseif L13_13 < 12 then
        L13_13 = mp
        L13_13 = L13_13.CLEAN
        return L13_13
      end
      L14_14 = L10_10
      L13_13 = L10_10.len
      L13_13 = L13_13(L14_14)
      L13_13 = L13_13 + 1
      L14_14 = L13_13 + 5
      L15_15 = L12_12.len
      L15_15 = L15_15(L12_12)
      if L14_14 >= L15_15 then
        L14_14 = mp
        L14_14 = L14_14.CLEAN
        return L14_14
      end
      L14_14 = string
      L14_14 = L14_14.sub
      L15_15 = L12_12
      L14_14 = L14_14(L15_15, L13_13, -5)
      if L14_14 == nil then
        L15_15 = mp
        L15_15 = L15_15.CLEAN
        return L15_15
      end
      L15_15 = L14_14
      L15_15 = L15_15 .. L10_10
      if string.find(L2_2, L15_15, 1, true) == nil then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end
L6_6 = mp
L6_6 = L6_6.CLEAN
return L6_6

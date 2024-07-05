local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 12288 then
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
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
L13_13 = L2_2(L3_3, L4_4)
L2_2 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L2_2(L3_3, L4_4))
if L1_1 ~= nil then
  L3_3 = string
  L3_3 = L3_3.len
  L4_4 = L1_1
  L3_3 = L3_3(L4_4)
elseif L3_3 < 10 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.len
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
elseif L3_3 < 5 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L4_4 = L2_2
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L4_4 = L2_2
L3_3 = L2_2.sub
L3_3 = L3_3(L4_4, L5_5)
if L3_3 == ".lnk" then
  L4_4 = {}
  L4_4[".zip->"] = "%.zip%->.+"
  L4_4[".rar->"] = "%.rar%->.+"
  L4_4[".7z->"] = "%.7z%->.+"
  L4_4[".iso->"] = "%.iso%->.+"
  L4_4[".arj->"] = "%.arj%->.+"
  L4_4[".gz->"] = "%.gz%->.+"
  L4_4[".ace->"] = "%.ace%->.+"
  L4_4[".z->"] = "%.z%->.+"
  L4_4[".xz->"] = "%.xz%->.+"
  for L8_8, L9_9 in L5_5(L6_6) do
    L10_10 = string
    L10_10 = L10_10.find
    L11_11 = L2_2
    L12_12 = L8_8
    L13_13 = 1
    L10_10 = L10_10(L11_11, L12_12, L13_13, true)
    if L10_10 then
      L10_10 = mp
      L10_10 = L10_10.set_mpattribute
      L11_11 = "LUA:ElenqueyInArchive"
      L10_10(L11_11)
      L10_10 = string
      L10_10 = L10_10.match
      L11_11 = L2_2
      L12_12 = L9_9
      L10_10 = L10_10(L11_11, L12_12)
      if L10_10 ~= nil then
        L12_12 = L10_10
        L11_11 = L10_10.len
        L11_11 = L11_11(L12_12)
      elseif L11_11 < 12 then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L8_8
      L11_11 = L8_8.len
      L11_11 = L11_11(L12_12)
      L11_11 = L11_11 + 1
      L12_12 = L11_11 + 5
      L13_13 = L10_10.len
      L13_13 = L13_13(L10_10)
      if L12_12 >= L13_13 then
        L12_12 = mp
        L12_12 = L12_12.CLEAN
        return L12_12
      end
      L12_12 = string
      L12_12 = L12_12.sub
      L13_13 = L10_10
      L12_12 = L12_12(L13_13, L11_11, -5)
      if L12_12 == nil then
        L13_13 = mp
        L13_13 = L13_13.CLEAN
        return L13_13
      end
      L13_13 = L12_12
      L13_13 = L13_13 .. L8_8
      if string.find(L2_2, L13_13, 1, true) == nil then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4

local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILEPATH
L11_11 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L1_1(L2_2))
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  if not (L1_1 < 22) then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "\\appdata\\local\\temp\\"
    L4_4 = 1
    L5_5 = true
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  end
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_FILENAME
L11_11 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L2_2(L3_3))
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.len
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
elseif L2_2 < 5 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L1_1
L4_4 = -4
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.len
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
elseif L3_3 < 4 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {}
L3_3[".cmd"] = true
L3_3[".jar"] = true
L3_3[".bat"] = true
L3_3[".lnk"] = true
L4_4 = L3_3[L2_2]
if L4_4 ~= true then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.match
L5_5 = L0_0
L4_4 = L4_4(L5_5, L6_6)
if L4_4 ~= nil then
  L5_5 = string
  L5_5 = L5_5.len
  L5_5 = L5_5(L6_6)
elseif L5_5 < 4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.find
L9_9 = true
L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
if L5_5 ~= nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = {}
L5_5.zip = "temp%x_.+%.zip"
L5_5.rar = "rar$.+"
L5_5["7zip"] = "7z.+"
L5_5.wzip = "wz.+"
for L9_9, L10_10 in L6_6(L7_7) do
  L11_11 = string
  L11_11 = L11_11.match
  L11_11 = L11_11(L4_4, L10_10)
  if L11_11 ~= nil then
    L11_11 = string
    L11_11 = L11_11.sub
    L11_11 = L11_11(L2_2, -3)
    mp.set_mpattribute("Lua:NonPeExtractedFileInArchive.A!" .. L11_11)
    mp.set_mpattribute("Lua:NonPeExtractedFileInArchive.A!" .. L11_11 .. "_" .. L9_9)
    return mp.INFECTED
  end
end
return L6_6

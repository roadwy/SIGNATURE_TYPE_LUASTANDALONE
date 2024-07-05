local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILEPATH
L7_7 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L1_1(L2_2))
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  if not (L1_1 < 22) then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  end
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.match
L2_2 = L0_0
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.len
  L2_2 = L2_2(L3_3)
elseif L2_2 < 4 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
L2_2.zip = "temp%x_.+%.zip"
L2_2.rar = "rar$.+"
L2_2["7zip"] = "7z.+"
L2_2.wzip = "wz.+"
for L6_6, L7_7 in L3_3(L4_4) do
  if string.match(L1_1, L7_7) ~= nil then
    mp.set_mpattribute("Lua:PeExtractedFileInArchive.A!" .. L6_6)
    return mp.INFECTED
  end
end
return L3_3

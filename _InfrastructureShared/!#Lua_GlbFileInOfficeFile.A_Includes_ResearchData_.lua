local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L5_5 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L1_1(L2_2, L3_3))
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "->word/media/"
L4_4 = 1
L5_5 = true
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = 16
L2_2 = mp
L2_2 = L2_2.HEADERPAGE_SZ
if L1_1 >= L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = headerpage
L4_4 = 9
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= nil and not (L1_1 >= L2_2) then
  L3_3 = mp
  L3_3 = L3_3.HEADERPAGE_SZ
elseif L2_2 > L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = tostring
L4_4 = headerpage
L3_3 = L3_3(L4_4)
if L3_3 ~= nil then
  L4_4 = #L3_3
elseif L4_4 < 288 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.match
L5_5 = L3_3
L4_4 = L4_4(L5_5, "data%:application%/gltf%-buffer%;base64%,(.-)\"")
if L4_4 ~= nil then
  L5_5 = #L4_4
elseif L5_5 < 144 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = MpCommon
L5_5 = L5_5.Base64Decode
L5_5 = L5_5(L4_4)
if L5_5 == nil then
  return mp.CLEAN
end
mp.set_mpattribute("Lua:GlbInOfficeFileHasBase64.A")
if #L5_5 <= 253 then
  return mp.CLEAN
end
if mp.readu_u32(L5_5, 241) ~= nil and mp.readu_u32(L5_5, 241) == 286331153 then
  mp.set_mpattribute("Lua:GlbInOfficeFileHasSuspOffsetF0.A")
end
if mp.readu_u32(L5_5, 249) ~= nil and mp.readu_u32(L5_5, 249) == 1094795585 then
  mp.set_mpattribute("Lua:GlbInOfficeFileHasSuspOffsetF8.A")
end
return mp.CLEAN

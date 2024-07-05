local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L4_4 = L4_4.utf8p1
  if L4_4 ~= nil then
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = this_sigattrlog
    L5_5 = L5_5[1]
    L5_5 = L5_5.utf8p1
    L4_4 = L4_4(L5_5)
    L0_0 = L4_4
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = this_sigattrlog
    L5_5 = L5_5[1]
    L5_5 = L5_5.image_path
    L4_4 = L4_4(L5_5)
    L1_1 = L4_4
    L4_4 = tonumber
    L5_5 = this_sigattrlog
    L5_5 = L5_5[1]
    L5_5 = L5_5.ppid
    L4_4 = L4_4(L5_5)
    L2_2 = L4_4
  end
end
L4_4 = this_sigattrlog
L4_4 = L4_4[9]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[9]
  L4_4 = L4_4.utf8p1
  if L4_4 ~= nil then
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = this_sigattrlog
    L5_5 = L5_5[9]
    L5_5 = L5_5.utf8p1
    L4_4 = L4_4(L5_5)
    L3_3 = L4_4
  end
end
if L0_0 and L3_3 then
  L4_4 = pcall
  L5_5 = bm
  L5_5 = L5_5.GetModAddress
  L6_6 = L2_2
  L7_7 = L3_3
  L5_5 = L4_4(L5_5, L6_6, L7_7)
  if L4_4 then
    L6_6 = isnull
    L7_7 = L5_5
    L6_6 = L6_6(L7_7)
  elseif L6_6 then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = pcall
  L7_7 = bm
  L7_7 = L7_7.GetProcAddress
  L8_8 = L2_2
  L9_9 = L3_3
  L7_7 = L6_6(L7_7, L8_8, L9_9, "ldrpmrdatabase")
  if L6_6 then
    L8_8 = isnull
    L9_9 = L7_7
    L8_8 = L8_8(L9_9)
  elseif L8_8 then
    L8_8 = mp
    L8_8 = L8_8.CLEAN
    return L8_8
  end
  L8_8 = pcall
  L9_9 = bm
  L9_9 = L9_9.GetProcAddress
  L9_9 = L8_8(L9_9, L2_2, L3_3, "avrfpapilookupcallbackroutine")
  if not L8_8 or isnull(L9_9) then
    return mp.CLEAN
  end
  bm.add_related_string("Sus Image Patch: ", L1_1, bm.RelatedStringBMReport)
  bm.add_related_string("Sus ntdll Address: ", L5_5, bm.RelatedStringBMReport)
  bm.add_related_string("Sus LdrpMrdataBase Address: ", L7_7, bm.RelatedStringBMReport)
  bm.add_related_string("Sus AvrfpAPILookupCallbackRoutine Address: ", L9_9, bm.RelatedStringBMReport)
  return mp.INFECTED
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4

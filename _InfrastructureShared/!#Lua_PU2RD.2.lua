local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
L1_1 = L0_0
L0_0 = L0_0.sub
L2_2 = -14
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= "->(PdfUriList)" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = 10
L1_1 = 8
L2_2 = 4000
L3_3 = mp
L3_3 = L3_3.getfilesize
L3_3 = L3_3()
if L3_3 == nil or L3_3 == 0 or L1_1 > L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L2_2 < L3_3 then
  L3_3 = L2_2
  L4_4 = mp
  L4_4 = L4_4.getfilename
  L5_5 = mp
  L5_5 = L5_5.bitor
  L10_10 = L5_5(L6_6, L7_7)
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L5_5(L6_6, L7_7))
  L5_5 = mp
  L5_5 = L5_5.ReportLowfi
  L5_5(L6_6, L7_7)
end
L4_4 = mp
L4_4 = L4_4.readprotection
L5_5 = false
L4_4(L5_5)
L4_4 = mp
L4_4 = L4_4.readfile
L5_5 = 0
L4_4 = L4_4(L5_5, L6_6)
if L4_4 ~= nil then
  L5_5 = L4_4.len
  L5_5 = L5_5(L6_6)
elseif L5_5 ~= L3_3 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.get_mpattribute
L5_5 = L5_5(L6_6)
if L5_5 then
  L5_5 = {}
  L10_10 = "]+)"
  for L9_9 in L6_6(L7_7, L8_8) do
    L10_10 = L9_9.len
    L10_10 = L10_10(L9_9)
    if L10_10 >= 12 then
      L10_10 = L9_9.sub
      L10_10 = L10_10(L9_9, 1, 4)
      if L10_10 == "http" then
        L10_10 = L5_5[L9_9]
        if L10_10 ~= 1 then
          L5_5[L9_9] = 1
        end
      end
    end
  end
  for L10_10, _FORV_11_ in L7_7(L8_8) do
    if L0_0 < L6_6 then
      break
    end
    mp.set_mpattribute("Lua:PdfUri_" .. L10_10)
  end
  L7_7(L8_8)
end
L5_5 = MpCommon
L5_5 = L5_5.Base64Encode
L5_5 = L5_5(L6_6)
if L5_5 ~= nil then
  if L6_6 >= 16 then
    L6_6(L7_7)
  end
end
if L6_6 == 0 and true == L7_7 then
  L8_8(L9_9)
end
return L8_8

local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25
function L0_0(A0_26, A1_27, A2_28)
  local L3_29, L4_30
  L3_29 = ""
  L4_30 = A1_27 + 4
  if A2_28 > L4_30 then
    L4_30 = mp
    L4_30 = L4_30.readu_u32
    L4_30 = L4_30(mp.readfile(A1_27, 4), 1)
    A1_27 = A1_27 + 4
    if not (L4_30 > 0) then
      return "", A1_27
    end
    if A2_28 > A1_27 + L4_30 then
      if A0_26 then
        L3_29 = mp.readfile(A1_27, L4_30)
        if L3_29 == nil then
          L3_29 = ""
        end
      end
      A1_27 = A1_27 + L4_30 + mp.bitand(4 - L4_30 % 4, 3)
    end
  end
  L4_30 = L3_29
  return L4_30, A1_27
end
function L1_1(A0_31, A1_32)
  local L2_33, L3_34
  L2_33 = ""
  L3_34 = A0_31 + 4
  if A1_32 > L3_34 then
    L3_34 = mp
    L3_34 = L3_34.readu_u32
    L3_34 = L3_34(mp.readfile(A0_31, 4), 1)
    A0_31 = A0_31 + 4
    if not (L3_34 > 0) then
      A0_31 = A0_31 + 4
      return "", A0_31
    end
    if A1_32 > A0_31 + L3_34 then
      L2_33 = mp.readfile(A0_31, L3_34)
      A0_31 = A0_31 + L3_34
      if L2_33 ~= nil then
        L2_33 = string.gsub(L2_33, "%z", "")
      end
    end
    A0_31 = A0_31 + mp.bitand(4 - L3_34 % 4, 3) + 4
  end
  L3_34 = L2_33
  return L3_34, A0_31
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_SCANREASON
L2_2 = L2_2(L3_3)
L3_3 = mp
L3_3 = L3_3.SCANREASON_ONMODIFIEDHANDLECLOSE
if L2_2 ~= L3_3 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilesize
L2_2 = L2_2()
if L2_2 < 68 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L2_2 > 1048576 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readprotection
L4_4 = false
L3_3(L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = headerpage
L5_5 = 1
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.readu_u32
L5_5 = headerpage
L6_6 = 41
L4_4 = L4_4(L5_5, L6_6)
L5_5 = mp
L5_5 = L5_5.readu_u32
L6_6 = headerpage
L5_5 = L5_5(L6_6, L7_7)
if L5_5 <= 0 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
if L5_5 > 300 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = 68
if L4_4 > 0 then
  for L10_10 = 1, L4_4 do
    L13_13 = L6_6
    L14_14 = L2_2
    L6_6 = L12_12
  end
end
L7_7["mssense.exe"] = true
L7_7["msmpenge.exe"] = true
L7_7["wdfilter.sys"] = true
L7_7["wdnisdrv.sys"] = true
for L13_13 = 1, L5_5 do
  L14_14 = L6_6 + 4
  if L2_2 >= L14_14 then
    L14_14 = mp
    L14_14 = L14_14.readu_u32
    L15_15 = mp
    L15_15 = L15_15.readfile
    L16_16 = L6_6
    L17_17 = 4
    L15_15 = L15_15(L16_16, L17_17)
    L16_16 = 1
    L14_14 = L14_14(L15_15, L16_16)
    L6_6 = L6_6 + 4
    L15_15 = ""
    L16_16 = L1_1
    L17_17 = L6_6
    L18_18 = L2_2
    L17_17 = L16_16(L17_17, L18_18)
    L6_6 = L17_17
    L15_15 = L16_16
    if L14_14 == 0 then
      L16_16 = string
      L16_16 = L16_16.lower
      L17_17 = L15_15
      L16_16 = L16_16(L17_17)
      L16_16 = L7_7[L16_16]
      if L16_16 then
        L16_16 = mp
        L16_16 = L16_16.set_mpattribute
        L17_17 = string
        L17_17 = L17_17.format
        L18_18 = "MpInternal_researchdata=MDEFileDenied=%s"
        L19_19 = MpCommon
        L19_19 = L19_19.Base64Encode
        L20_20 = L15_15
        L25_25 = L19_19(L20_20)
        L25_25 = L17_17(L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L19_19(L20_20))
        L16_16(L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L17_17(L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L19_19(L20_20)))
        L16_16 = mp
        L16_16 = L16_16.INFECTED
        return L16_16
      end
    end
    L6_6 = L6_6 + 8
    L16_16 = ""
    L17_17 = L0_0
    L18_18 = true
    L19_19 = L6_6
    L20_20 = L2_2
    L18_18 = L17_17(L18_18, L19_19, L20_20)
    L6_6 = L18_18
    L16_16 = L17_17
    if L14_14 == 0 and L15_15 == "" and L16_16 == "" then
      L9_9[L13_13] = true
    end
  end
end
if L8_8 == false or L3_3 ~= 7 then
  return L10_10
end
L6_6 = 68
if L11_11 < 4000 then
else
  L6_6 = L2_2 - 4000
end
L13_13 = L10_10
if L11_11 == nil then
  return L12_12
end
L13_13 = "."
L14_14 = L13_13
L13_13 = L13_13.rep
L15_15 = 36
L13_13 = L13_13(L14_14, L15_15)
L14_14 = "\a%z%z%z"
L14_14 = L11_11
L13_13 = L11_11.find
L15_15 = L12_12
L13_13 = L13_13(L14_14, L15_15)
if L13_13 == nil then
  L14_14 = mp
  L14_14 = L14_14.CLEAN
  return L14_14
end
L14_14 = {}
L14_14["c:\\programdata\\microsoft\\windows defender"] = true
L14_14["c:\\programdata\\microsoft\\windows defender advanced threat protection"] = true
L14_14["c:\\program files\\windows defender advanced threat protection"] = true
L14_14["c:\\program files (x86)\\windows defender advanced threat protection"] = true
L14_14["c:\\program files\\windows defender"] = true
L14_14["c:\\program files (x86)\\windows defender"] = true
L14_14["c:\\windows\\*"] = true
L14_14["c:\\program files\\*"] = true
L14_14["c:\\program files (x86)\\*"] = true
L15_15 = 1
L16_16 = L13_13 + 44
while true do
  L17_17 = L16_16 + 4
  if L2_2 >= L17_17 and L5_5 >= L15_15 then
    L17_17 = mp
    L17_17 = L17_17.readu_u32
    L18_18 = L11_11
    L19_19 = L16_16
    L17_17 = L17_17(L18_18, L19_19)
    L16_16 = L16_16 + 4
    L18_18 = ""
    L19_19 = mp
    L19_19 = L19_19.bitand
    L20_20 = L17_17 % 4
    L20_20 = 4 - L20_20
    L19_19 = L19_19(L20_20, L21_21)
    L20_20 = L16_16
    if L2_2 >= L21_21 then
      for L24_24 = L16_16, L20_20 + L17_17, 2 do
        L25_25 = mp
        L25_25 = L25_25.readu_u16
        L25_25 = L25_25(L11_11, L24_24)
        if L25_25 ~= 0 then
          L18_18 = L18_18 .. string.char(L25_25)
          L16_16 = L16_16 + 2
        end
      end
      L16_16 = L21_21 + 4
      if L21_21 then
        if L21_21 then
          L24_24 = "MpInternal_researchdata=MDEPathDenied=%s"
          L25_25 = MpCommon
          L25_25 = L25_25.Base64Encode
          L25_25 = L25_25(L21_21)
          L25_25 = L23_23(L24_24, L25_25, L25_25(L21_21))
          L22_22(L23_23, L24_24, L25_25, L23_23(L24_24, L25_25, L25_25(L21_21)))
          return L22_22
        end
      end
    end
    L15_15 = L15_15 + 1
  end
end
L17_17 = mp
L17_17 = L17_17.CLEAN
return L17_17

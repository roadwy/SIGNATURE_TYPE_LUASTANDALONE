local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29
L0_0 = mp
L0_0 = L0_0.GetCertificateInfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = #L0_0
if L1_1 < 1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = 0
L2_2 = 0
L3_3 = 0
L4_4 = 3
L5_5 = 3
L6_6 = 3
function L7_7(A0_30)
  if not A0_30 then
    return
  end
  A0_30 = A0_30:gsub(" ", "")
  if #A0_30 > 50 then
    return
  end
  if mp.get_mpattribute(A0_30) then
    return
  end
  mp.set_mpattribute(A0_30)
  return
end
function L8_8(A0_31, A1_32)
  local L2_33
  L2_33 = 6
  if A1_32 and type(A1_32) == "number" then
    L2_33 = A1_32
  end
  if not A0_31 then
    return nil
  end
  if L2_33 > #A0_31 then
    L2_33 = #A0_31
  end
  return A0_31:gsub(" ", ""):sub(1, L2_33)
end
function L9_9(A0_34)
  local L2_35
  L2_35 = string
  L2_35 = L2_35.format
  return L2_35("%x", crypto.CRC32Buffer(-1, A0_34, 0, #A0_34))
end
function L10_10(A0_36)
  local L1_37
  if not A0_36 then
    L1_37 = nil
    return L1_37
  end
  L1_37 = A0_36.Hash
  if not L1_37 then
    L1_37 = nil
    return L1_37
  end
  L1_37 = A0_36.Hash
  return _UPVALUE0_(L1_37)
end
function L11_11(A0_38)
  local L1_39, L2_40, L3_41, L4_42, L5_43, L6_44, L7_45, L8_46, L9_47, L10_48
  if not A0_38 then
    L1_39 = nil
    return L1_39
  end
  L1_39, L2_40, L3_41, L4_42, L5_43, L6_44, L7_45, L8_46, L9_47, L10_48 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
  if A0_38.Country then
    L1_39 = mp.utf16to8(A0_38.Country)
    L2_40 = _UPVALUE0_(L1_39)
  end
  if A0_38.State then
    L3_41 = mp.utf16to8(A0_38.State)
    L4_42 = _UPVALUE0_(L3_41)
  end
  if A0_38.Locality then
    L5_43 = mp.utf16to8(A0_38.Locality)
    L6_44 = _UPVALUE0_(L5_43)
  end
  if A0_38.Organization then
    L7_45 = mp.utf16to8(A0_38.Organization)
    L8_46 = _UPVALUE0_(L7_45)
  end
  if A0_38.CommonName then
    L9_47 = mp.utf16to8(A0_38.CommonName)
    L10_48 = _UPVALUE0_(L9_47)
  end
  return {
    Country = L1_39,
    CountryCRC32 = L2_40,
    State = L3_41,
    StateCRC32 = L4_42,
    Locality = L5_43,
    LocalityCRC32 = L6_44,
    Organization = L7_45,
    OrganizationCRC32 = L8_46,
    CommonName = L9_47,
    CommonNameCRC32 = L10_48
  }
end
for L15_15, L16_16 in L12_12(L13_13) do
  if L17_17 == "APPX" then
    if L1_1 == L4_4 then
      break
    end
    for L20_20, L21_21 in L17_17(L18_18) do
      if L2_2 < L5_5 then
        L22_22 = nil
        L23_23 = L21_21.FingerprintSha1
        if L23_23 then
          L22_22 = L21_21.FingerprintSha1
        else
          L23_23 = L21_21.FingerprintSha256
          if L23_23 then
            L22_22 = L21_21.FingerprintSha256
          else
            L23_23 = mp
            L23_23 = L23_23.CLEAN
            return L23_23
          end
        end
        L23_23 = L10_10
        L24_24 = L22_22
        L23_23 = L23_23(L24_24)
        if not L23_23 then
          L24_24 = mp
          L24_24 = L24_24.CLEAN
          return L24_24
        end
        L24_24 = nil
        L25_25 = L21_21.Issuer
        if L25_25 then
          L24_24 = L21_21.Issuer
        else
          L25_25 = L21_21.Subject
          if L25_25 then
            L24_24 = L21_21.Subject
          else
            L25_25 = mp
            L25_25 = L25_25.CLEAN
            return L25_25
          end
        end
        L25_25 = L11_11
        L26_26 = L24_24
        L25_25 = L25_25(L26_26)
        if not L25_25 then
          L26_26 = mp
          L26_26 = L26_26.CLEAN
          return L26_26
        end
        L26_26 = "Lua:P7X:Cert:"
        L27_27 = L26_26
        L28_28 = "FGPT:"
        L29_29 = L8_8
        L29_29 = L29_29(L23_23, 8)
        L27_27 = L27_27 .. L28_28 .. L29_29
        L28_28 = L7_7
        L29_29 = L27_27
        L28_28(L29_29)
        L28_28 = L25_25.Country
        if L28_28 then
          L28_28 = L26_26
          L29_29 = "CTRY:"
          L28_28 = L28_28 .. L29_29 .. L8_8(L25_25.Country, 2)
          L29_29 = L26_26
          L29_29 = L29_29 .. "CTRY:" .. L8_8(L25_25.CountryCRC32, 8)
          L7_7(L28_28)
          L7_7(L29_29)
        end
        L28_28 = L25_25.Organization
        if L28_28 then
          L28_28 = L26_26
          L29_29 = "ORG:"
          L28_28 = L28_28 .. L29_29 .. L8_8(L25_25.Organization, 8)
          L29_29 = L26_26
          L29_29 = L29_29 .. "ORG:" .. L8_8(L25_25.OrganizationCRC32, 8)
          L7_7(L28_28)
          L7_7(L29_29)
        end
        L28_28 = L25_25.CommonName
        if L28_28 then
          L28_28 = L26_26
          L29_29 = "CN:"
          L28_28 = L28_28 .. L29_29 .. L8_8(L25_25.CommonName, 8)
          L29_29 = L26_26
          L29_29 = L29_29 .. "CN:" .. L8_8(L25_25.CommonNameCRC32, 8)
          L7_7(L28_28)
          L7_7(L29_29)
        end
      end
      L2_2 = L2_2 + 1
    end
    for L20_20, L21_21 in L17_17(L18_18) do
      if L3_3 < L6_6 then
        L22_22 = L21_21.Fingerprint
        if not L22_22 then
          L22_22 = mp
          L22_22 = L22_22.CLEAN
          return L22_22
        end
        L22_22 = L10_10
        L23_23 = L21_21.Fingerprint
        L22_22 = L22_22(L23_23)
        if not L22_22 then
          L23_23 = mp
          L23_23 = L23_23.CLEAN
          return L23_23
        end
        L23_23 = "Lua:P7X:Sign:"
        L24_24 = L23_23
        L25_25 = "FGPT:"
        L26_26 = L8_8
        L27_27 = L22_22
        L28_28 = 8
        L26_26 = L26_26(L27_27, L28_28)
        L24_24 = L24_24 .. L25_25 .. L26_26
        L25_25 = L7_7
        L26_26 = L24_24
        L25_25(L26_26)
      end
      L3_3 = L3_3 + 1
    end
    L1_1 = L1_1 + 1
  end
end
L15_15 = #L0_0
L29_29 = L13_13(L14_14, L15_15)
L12_12(L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L13_13(L14_14, L15_15))
L15_15 = L2_2
L29_29 = L13_13(L14_14, L15_15)
L12_12(L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L13_13(L14_14, L15_15))
L15_15 = L3_3
L29_29 = L13_13(L14_14, L15_15)
L12_12(L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L13_13(L14_14, L15_15))
return L12_12

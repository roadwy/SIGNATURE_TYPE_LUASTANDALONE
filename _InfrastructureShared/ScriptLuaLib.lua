local L0_0, L1_1
function L0_0(A0_2)
  local L1_3, L2_4, L3_5, L4_6, L5_7, L6_8, L7_9, L8_10, L9_11, L10_12, L11_13, L12_14, L13_15, L14_16, L15_17, L16_18, L17_19, L18_20, L19_21, L20_22, L21_23, L22_24, L23_25, L24_26, L25_27
  L1_3 = mp
  L1_3 = L1_3.getfilesize
  L1_3 = L1_3()
  if L1_3 > 250000 then
    L2_4 = false
    return L2_4
  end
  L2_4 = A0_2 - 8192
  L3_5 = 0
  if L2_4 > L3_5 then
    L3_5 = L2_4
  end
  L4_6 = L1_3 - L3_5
  L5_7 = 16384
  if L4_6 < 16384 then
    L5_7 = L4_6
  end
  L6_8 = mp
  L6_8 = L6_8.readprotection
  L7_9 = false
  L6_8(L7_9)
  L6_8 = mp
  L6_8 = L6_8.readfile
  L7_9 = L3_5
  L8_10 = L5_7
  L6_8 = L6_8(L7_9, L8_10)
  L7_9 = -1
  L8_10 = -1
  L9_11 = {}
  L9_11["'"] = true
  L9_11["\""] = true
  L9_11[">"] = true
  L9_11["<"] = true
  L9_11[" "] = true
  L9_11["\t"] = true
  L10_12 = {}
  L11_13 = "MpInternal_researchdata="
  L12_14 = string
  L12_14 = L12_14.gmatch
  L13_15 = L6_8
  L12_14 = L12_14(L13_15, L14_16)
  L13_15 = false
  for L17_19, L18_20, L19_21 in L12_14, nil, nil do
    L20_22 = ""
    L21_23 = ""
    L22_24 = ""
    L23_25 = L9_11[L17_19]
    if L23_25 == true then
      L23_25 = L9_11[L19_21]
      if L23_25 == true then
        L23_25 = string
        L23_25 = L23_25.len
        L24_26 = L18_20
        L23_25 = L23_25(L24_26)
        if L23_25 > 25 then
          L24_26 = L10_12[L18_20]
          if L24_26 == nil then
            L10_12[L18_20] = 1
            L25_27 = L18_20
            L24_26 = L18_20.sub
            L24_26 = L24_26(L25_27, 1, 1)
            L25_27 = L18_20.sub
            L25_27 = L25_27(L18_20, 1, 2)
            if (L24_26 == "1" or L24_26 == "3" or L18_20:sub(1, 3) == "bc1") and L23_25 > 25 and L23_25 < 79 then
              L20_22 = L18_20
              L21_23 = "btc"
              L22_24 = "00000001"
            elseif L25_27 == "0x" and L23_25 == 42 then
              L20_22 = L18_20
              L21_23 = "eth"
              L22_24 = "00000002"
              if L6_8:find("send SHIB", 1, true) ~= nil then
                L21_23 = "shib"
                L22_24 = "00000006"
              end
              if L6_8:find("send BNB", 1, true) ~= nil then
                L21_23 = "bnb"
                L22_24 = "00000007"
              end
            elseif (L24_26 == "L" or L24_26 == "M" or L18_20:sub(1, 4) == "ltc1") and L23_25 > 25 and L23_25 < 36 then
              L20_22 = L18_20
              L21_23 = "ltc"
              L22_24 = "00000003"
            elseif (L18_20:sub(1, 3) == "Ae2" or L18_20:sub(1, 5) == "addr1" or L18_20:sub(1, 5) == "DdzFF") and L23_25 > 25 and L23_25 < 200 then
              L20_22 = L18_20
              L21_23 = "ada"
              L22_24 = "00000004"
            elseif L24_26 == "D" and L23_25 > 25 and L23_25 < 36 and string.match(L25_27, "D[0-1A-Z]") ~= nil then
              L20_22 = L18_20
              L21_23 = "doge"
              L22_24 = "00000005"
            end
          end
        end
        if L20_22 ~= "" and L21_23 ~= "" and L22_24 ~= "" then
          L13_15 = true
          if L11_13 == "MpInternal_researchdata=" then
            L24_26 = L11_13
            L25_27 = L21_23
            L11_13 = L24_26 .. L25_27 .. "=" .. L20_22
          else
            L24_26 = L11_13
            L25_27 = ","
            L11_13 = L24_26 .. L25_27 .. L21_23 .. "=" .. L20_22
          end
          if L7_9 < 0 and L8_10 < 0 then
            L24_26 = string
            L24_26 = L24_26.find
            L25_27 = L6_8
            L25_27 = L24_26(L25_27, L20_22, 1, true)
            if L24_26 ~= nil then
              L7_9 = L3_5 + L24_26 - 1
              L8_10 = L5_7 - L24_26 + 1
            end
          end
        end
      end
    end
  end
  if L13_15 == false then
    return L14_16
  else
    L14_16(L15_17)
    if L7_9 > -1 and L8_10 > 0 then
      L17_19 = "[CryptoSearcher]"
      L18_20 = mp
      L18_20 = L18_20.ADD_VFO_TAKE_ACTION_ON_DAD
      L14_16(L15_17, L16_18, L17_19, L18_20)
    end
  end
  return L14_16
end
Infrastructure_CryptoSearcher = L0_0
function L0_0()
  local L0_28
  if mp.GetBruteMatchData().is_header then
    L0_28 = tostring(headerpage):sub(mp.GetBruteMatchData().match_offset, mp.GetBruteMatchData().match_offset + mp.HEADERPAGE_SZ)
  else
    L0_28 = tostring(footerpage):sub(mp.GetBruteMatchData().match_offset, mp.GetBruteMatchData().match_offset + mp.FOOTERPAGE_SZ)
  end
  L0_28 = string.lower(L0_28)
  return L0_28
end
LoadMatchedDataInBuffer = L0_0
function L0_0(A0_29, A1_30)
  for _FORV_6_ in string.gmatch(A0_29, A1_30) do
  end
  return 0 + 1
end
GetPatternOccurenceCount = L0_0

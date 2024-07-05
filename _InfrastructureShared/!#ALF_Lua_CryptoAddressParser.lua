local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28
L0_0 = mp
L0_0 = L0_0.get_mpattributesubstring
L1_1 = "Detection:Trojan:Win32/ClipBanker"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattributesubstring
  L1_1 = "Detection:Trojan:Win64/ClipBanker"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattributesubstring
    L1_1 = "Detection:Trojan:MSIL/ClipBanker"
    L0_0 = L0_0(L1_1)
  end
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
  if L0_0 < 768 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  function L1_1(A0_29)
    local L1_30, L2_31, L3_32, L4_33, L5_34, L6_35
    L1_30 = 0
    for L5_34 = #A0_29, 1, -1 do
      L6_35 = L1_30 * 256
      L1_30 = L6_35 + string.byte(A0_29, L5_34, L5_34)
    end
    return L1_30
  end
  L2_2 = mp
  L2_2 = L2_2.readprotection
  L3_3 = false
  L2_2(L3_3)
  L2_2 = 4
  L3_3 = 2
  if not (L0_0 < 4096) or not L0_0 then
    L0_0 = 4096
  end
  L4_4 = mp
  L4_4 = L4_4.readfile
  L5_5 = 0
  L6_6 = L0_0
  L4_4 = L4_4(L5_5, L6_6)
  L5_5 = 60
  L6_6 = L1_1
  L7_7 = string
  L7_7 = L7_7.sub
  L8_8 = L4_4
  L9_9 = L5_5 + 1
  L10_10 = L5_5 + L2_2
  L28_28 = L7_7(L8_8, L9_9, L10_10)
  L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L7_7(L8_8, L9_9, L10_10))
  L5_5 = L6_6 + 6
  L7_7 = L1_1
  L8_8 = string
  L8_8 = L8_8.sub
  L9_9 = L4_4
  L10_10 = L5_5 + 1
  L11_11 = L5_5 + L3_3
  L28_28 = L8_8(L9_9, L10_10, L11_11)
  L7_7 = L7_7(L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L8_8(L9_9, L10_10, L11_11))
  L5_5 = L6_6 + 20
  L8_8 = L1_1
  L9_9 = string
  L9_9 = L9_9.sub
  L10_10 = L4_4
  L11_11 = L5_5 + 1
  L12_12 = L5_5 + L3_3
  L28_28 = L9_9(L10_10, L11_11, L12_12)
  L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L9_9(L10_10, L11_11, L12_12))
  L9_9 = L6_6 + 24
  L5_5 = L9_9 + L8_8
  L9_9 = string
  L9_9 = L9_9.sub
  L10_10 = L4_4
  L11_11 = L5_5 + 1
  L12_12 = 40 * L7_7
  L12_12 = L5_5 + L12_12
  L9_9 = L9_9(L10_10, L11_11, L12_12)
  function L10_10(A0_36)
    local L1_37
    L1_37 = #A0_36
    if L1_37 == 42 and A0_36:find("^0x[0-9a-fA-F]+$") then
      return "eth"
    elseif L1_37 >= 26 and L1_37 <= 35 and A0_36:find("^[13][a-zA-HJ-NP-Z0-9]+$") then
      return "btc"
    elseif (L1_37 == 42 or L1_37 == 62) and A0_36:find("^bc1[0-9a-z]+$") then
      return "btc"
    elseif L1_37 == 42 and A0_36:find("^[qp][0-9a-z]+$") then
      return "bch"
    elseif (L1_37 == 43 or L1_37 == 63) and A0_36:find("^ltc1[a-z0-9]+$") then
      return "ltc"
    elseif (L1_37 == 33 or L1_37 == 34) and A0_36:find("^r[1-9a-km-zA-HJ-NP-Z]+$") then
      return "xrp"
    elseif (L1_37 == 47 or L1_37 == 48) and A0_36:find("^1[1-9a-km-zA-HJ-NP-Z]+$") then
      return "dot"
    elseif (L1_37 == 58 or L1_37 == 103) and A0_36:find("^addr1[a-zA-Z0-9]+$") then
      return "ada"
    elseif L1_37 == 59 and A0_36:find("^Ae2[a-zA-Z0-9]+$") then
      return "ada"
    elseif L1_37 == 104 and A0_36:find("^DdzFF[a-zA-Z0-9]+$") then
      return "ada"
    elseif L1_37 == 34 then
      if A0_36:find("^T[1-9a-km-zA-HJ-NP-Z]+$") then
        return "trx"
      elseif A0_36:find("^[LM][1-9a-km-zA-HJ-NP-Z]+$") then
        return "ltc"
      elseif A0_36:find("^D[5-9A-HJ-NP-U][1-9A-HJ-NP-Za-km-z]+$") then
        return "doge"
      end
    end
    return nil
  end
  L11_11 = {}
  L11_11["'"] = true
  L11_11["\""] = true
  L11_11[">"] = true
  L11_11["#"] = true
  L11_11["*"] = true
  L11_11[":"] = true
  L11_11["."] = true
  L11_11["+"] = true
  L11_11["="] = true
  L11_11["/"] = true
  L11_11["<"] = true
  L11_11[" "] = true
  L11_11["\t"] = true
  L11_11["\n"] = true
  L11_11["\r"] = true
  L11_11["\000"] = true
  L11_11["\001"] = true
  L11_11["\002"] = true
  L11_11["\v"] = true
  L11_11["\027"] = true
  L12_12 = {}
  L13_13 = 0
  L14_14 = {}
  L15_15 = 10485760
  L5_5 = 0
  L16_16 = 0
  while L7_7 > L16_16 do
    L16_16 = L16_16 + 1
    L17_17 = string
    L17_17 = L17_17.sub
    L18_18 = L9_9
    L19_19 = L5_5 + 1
    L20_20 = 2 * L2_2
    L20_20 = L5_5 + L20_20
    L17_17 = L17_17(L18_18, L19_19, L20_20)
    L18_18 = string
    L18_18 = L18_18.sub
    L19_19 = L17_17
    L20_20 = 1
    L21_21 = 6
    L18_18 = L18_18(L19_19, L20_20, L21_21)
    if L18_18 ~= ".rdata" then
      L18_18 = string
      L18_18 = L18_18.sub
      L19_19 = L17_17
      L20_20 = 1
      L21_21 = 5
      L18_18 = L18_18(L19_19, L20_20, L21_21)
      if L18_18 ~= ".text" then
        L18_18 = string
        L18_18 = L18_18.sub
        L19_19 = L17_17
        L20_20 = 1
        L21_21 = 5
        L18_18 = L18_18(L19_19, L20_20, L21_21)
      end
    end
    if L18_18 == ".rsrc" then
      L18_18 = 2 * L2_2
      L18_18 = L5_5 + L18_18
      L18_18 = L18_18 + L2_2
      L5_5 = L18_18 + L2_2
      L18_18 = L1_1
      L19_19 = string
      L19_19 = L19_19.sub
      L20_20 = L9_9
      L21_21 = L5_5 + 1
      L28_28 = L19_19(L20_20, L21_21, L22_22)
      L18_18 = L18_18(L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L19_19(L20_20, L21_21, L22_22))
      L5_5 = L5_5 + L2_2
      L19_19 = L1_1
      L20_20 = string
      L20_20 = L20_20.sub
      L21_21 = L9_9
      L28_28 = L20_20(L21_21, L22_22, L23_23)
      L19_19 = L19_19(L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L20_20(L21_21, L22_22, L23_23))
      L20_20 = L5_5 + 40
      L21_21 = 5 * L2_2
      L5_5 = L20_20 - L21_21
      L0_0 = L15_15 > L18_18 and L18_18 or L15_15
      L20_20 = mp
      L20_20 = L20_20.readfile
      L21_21 = L19_19
      L20_20 = L20_20(L21_21, L22_22)
      if L20_20 ~= nil then
        L21_21 = #L20_20
        if L21_21 > 25 then
          L21_21 = string
          L21_21 = L21_21.gmatch
          L21_21 = L21_21(L22_22, L23_23)
          for L25_25, L26_26, L27_27 in L21_21, nil, nil do
            if L13_13 > 1000 then
              break
            end
            L28_28 = L11_11[L25_25]
            if L28_28 == true then
              L28_28 = L11_11[L27_27]
              if L28_28 == true then
                L28_28 = L10_10
                L28_28 = L28_28(L26_26)
                if L28_28 ~= nil and L14_14[L26_26] == nil then
                  L14_14[L26_26] = L28_28
                  L13_13 = L13_13 + 1
                  L12_12[#L12_12 + 1] = L28_28 .. "=" .. L26_26
                end
              end
            end
          end
        end
      end
    else
      L5_5 = L5_5 + 40
    end
  end
  if L13_13 > 0 then
    L17_17 = #L12_12
    L17_17 = L17_17 + 1
    L12_12[L17_17] = "threat=ClipBanker,filetype=PE"
    L17_17 = "MpInternal_researchdata="
    L18_18 = table
    L18_18 = L18_18.concat
    L19_19 = L12_12
    L20_20 = ","
    L18_18 = L18_18(L19_19, L20_20)
    L17_17 = L17_17 .. L18_18
    L18_18 = mp
    L18_18 = L18_18.set_mpattribute
    L19_19 = L17_17
    L18_18(L19_19)
    L18_18 = mp
    L18_18 = L18_18.CLEAN
    return L18_18
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

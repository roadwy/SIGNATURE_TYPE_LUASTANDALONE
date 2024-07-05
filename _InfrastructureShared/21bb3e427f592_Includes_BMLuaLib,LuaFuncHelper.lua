local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25
L0_0 = 4
L1_1 = 1
L2_2 = nil
L3_3 = {}
L4_4 = nil
L5_5 = mp
L5_5 = L5_5.SIGATTR_LOG_SZ
for L9_9 = 1, L5_5 do
  if L10_10 == 16491 then
    if L10_10 == "GenericRansomware:Type4" then
      if L10_10 ~= nil then
        L2_2 = L10_10
        if L2_2 then
          L4_4 = L2_2.appended_ext
          break
        end
      end
    end
  end
end
L9_9 = {}
if L4_4 ~= nil then
  for L13_13 = 1, L5_5 do
    L14_14 = sigattr_tail
    L14_14 = L14_14[L13_13]
    L14_14 = L14_14.attribute
    if L14_14 == 16384 then
      L14_14 = sigattr_tail
      L14_14 = L14_14[L13_13]
      L14_14 = L14_14.utf8p1
      if L14_14 then
        L14_14 = sigattr_tail
        L14_14 = L14_14[L13_13]
        L14_14 = L14_14.utf8p1
        L15_15 = L14_14
        L14_14 = L14_14.byte
        L16_16 = 1
        L14_14 = L14_14(L15_15, L16_16)
        if L14_14 ~= 37 then
          L14_14 = sigattr_tail
          L14_14 = L14_14[L13_13]
          L14_14 = L14_14.utf8p1
          L15_15 = L14_14
          L14_14 = L14_14.lower
          L14_14 = L14_14(L15_15)
          L16_16 = L14_14
          L15_15 = L14_14.match
          L17_17 = "[^\\]+$"
          L15_15 = L15_15(L16_16, L17_17)
          L17_17 = L15_15
          L16_16 = L15_15.match
          L18_18 = "%.[^%.]+$"
          L16_16 = L16_16(L17_17, L18_18)
          if L16_16 and L16_16 == L4_4 then
            L17_17 = L3_3[L14_14]
            if L17_17 == nil then
              L17_17 = string
              L17_17 = L17_17.sub
              L18_18 = L15_15
              L19_19 = 1
              L20_20 = string
              L20_20 = L20_20.len
              L21_21 = L15_15
              L20_20 = L20_20(L21_21)
              L21_21 = string
              L21_21 = L21_21.len
              L21_21 = L21_21(L22_22)
              L20_20 = L20_20 - L21_21
              L17_17 = L17_17(L18_18, L19_19, L20_20)
              L19_19 = L17_17
              L18_18 = L17_17.match
              L20_20 = "%.[^%.]+$"
              L18_18 = L18_18(L19_19, L20_20)
              if L18_18 then
                L19_19 = L9_9[L18_18]
                if L19_19 == nil then
                  L19_19 = mp
                  L19_19 = L19_19.GetExtensionClass
                  L20_20 = L16_16
                  L19_19 = L19_19(L20_20)
                  if L19_19 == 0 then
                    L19_19 = mp
                    L19_19 = L19_19.GetExtensionClass
                    L20_20 = L18_18
                    L19_19 = L19_19(L20_20)
                    if L19_19 ~= 255 then
                      L19_19 = mp
                      L19_19 = L19_19.GetExtensionClass
                      L20_20 = L18_18
                      L19_19 = L19_19(L20_20)
                      if L19_19 ~= 2 then
                        L19_19 = mp
                        L19_19 = L19_19.GetExtensionClass
                        L20_20 = L18_18
                        L19_19 = L19_19(L20_20)
                      end
                    elseif L19_19 == 3 then
                      L9_9[L18_18] = L13_13
                    end
                  end
                end
              end
              L20_20 = L14_14
              L19_19 = L14_14.match
              L21_21 = "^(.+)\\"
              L19_19 = L19_19(L20_20, L21_21)
              if L19_19 then
                L20_20 = L8_8[L19_19]
                if L20_20 == nil then
                  L8_8[L19_19] = L13_13
                end
              end
              if L0_0 <= L7_7 and L1_1 <= L6_6 then
                L20_20 = {}
                L21_21 = {}
                for L25_25, _FORV_26_ in L22_22(L23_23) do
                  table.insert(L20_20, L25_25)
                end
                for L25_25, _FORV_26_ in L22_22(L23_23) do
                  table.insert(L21_21, L25_25)
                end
                L22_22.ext_list = L20_20
                L22_22.dir_list = L21_21
                L22_22.enc_meta = L2_2
                L25_25 = "gendfc_ransom_meta"
                L24_24(L25_25, L23_23, bm.RelatedStringBMReport)
                return L24_24
              end
              L3_3[L14_14] = L13_13
            end
          end
        end
      end
    end
  end
end
return L10_10

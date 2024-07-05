local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
L2_2 = 5
L3_3 = {}
L4_4 = 0
for L8_8 = 1, L0_0 do
  L10_10 = sigattr_tail
  L10_10 = L10_10[L8_8]
  L10_10 = L10_10.attribute
  if L10_10 == 16385 then
    L10_10 = string
    L10_10 = L10_10.len
    L11_11 = sigattr_tail
    L11_11 = L11_11[L8_8]
    L11_11 = L11_11.utf8p1
    L10_10 = L10_10(L11_11)
    if L10_10 > 5 then
      L10_10 = sigattr_tail
      L10_10 = L10_10[L8_8]
      L10_10 = L10_10.utf8p1
      L11_11 = L10_10
      L10_10 = L10_10.byte
      L12_12 = 1
      L10_10 = L10_10(L11_11, L12_12)
      if L10_10 ~= 37 then
        L11_11 = L9_9
        L10_10 = L9_9.find
        L12_12 = "TotalSizeAppend:0"
        L10_10 = L10_10(L11_11, L12_12, L13_13, L14_14)
        if L10_10 == nil then
          L10_10 = sigattr_tail
          L10_10 = L10_10[L8_8]
          L10_10 = L10_10.utf8p1
          L11_11 = L10_10
          L10_10 = L10_10.lower
          L10_10 = L10_10(L11_11)
          L12_12 = L10_10
          L11_11 = L10_10.match
          L11_11 = L11_11(L12_12, L13_13)
          if L11_11 ~= nil then
            L12_12 = mp
            L12_12 = L12_12.crc32
            L12_12 = L12_12(L13_13, L14_14, L15_15, L16_16)
            if L14_14 == nil then
              L1_1[L12_12] = L8_8
              for L17_17, L18_18 in L14_14(L15_15, L16_16) do
                L13_13[L17_17] = L18_18
              end
              if L14_14 then
              else
              end
              if L14_14 > 16 then
                return L15_15
              end
              if L15_15 then
              else
              end
              if L16_16 then
                L17_17 = L13_13.FirstOff
              else
              end
              L17_17 = L13_13.NumWrites
              if L17_17 then
                L17_17 = tonumber
                L18_18 = L13_13.NumWrites
                L17_17 = L17_17(L18_18)
              else
                L17_17 = L17_17 or 0
              end
              L18_18 = L13_13.BiggestOff
              if L18_18 then
                L18_18 = tonumber
                L19_19 = L13_13.BiggestOff
                L18_18 = L18_18(L19_19)
              else
                L18_18 = L18_18 or 0
              end
              L19_19 = L13_13.SmallestOff
              if L19_19 then
                L19_19 = tonumber
                L20_20 = L13_13.SmallestOff
                L19_19 = L19_19(L20_20)
              else
                L19_19 = L19_19 or 0
              end
              L20_20 = L13_13.TotalSizeWrite
              if L20_20 then
                L20_20 = tonumber
                L21_21 = L13_13.TotalSizeWrite
                L20_20 = L20_20(L21_21)
              else
                L20_20 = L20_20 or 0
              end
              if L18_18 ~= 0 and L16_16 == 0 and L19_19 == 0 and L18_18 == L15_15 then
                L21_21 = L15_15 + 1
                if L21_21 == L20_20 and L17_17 > 0 and L14_14 > 0 and L14_14 < 16 then
                  L21_21 = L20_20 % 16
                  if L21_21 == 0 then
                    L21_21 = sigattr_tail
                    L21_21 = L21_21[L8_8]
                    L21_21 = L21_21.utf8p1
                    L13_13.path = L21_21
                    L3_3[L8_8] = L13_13
                    L4_4 = L4_4 + 1
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
if L2_2 <= L4_4 then
  for L10_10, L11_11 in L7_7(L8_8) do
    L12_12 = false
    for L16_16 = 1, L0_0 do
      L17_17 = sigattr_tail
      L17_17 = L17_17[L16_16]
      L17_17 = L17_17.attribute
      if L17_17 == 16386 then
        L17_17 = sigattr_tail
        L17_17 = L17_17[L16_16]
        L17_17 = L17_17.utf8p2
        L18_18 = sigattr_tail
        L18_18 = L18_18[L10_10]
        L18_18 = L18_18.utf8p1
        if L17_17 == L18_18 then
          L17_17 = sigattr_tail
          L17_17 = L17_17[L16_16]
          L17_17 = L17_17.utf8p1
          L18_18 = L17_17
          L17_17 = L17_17.lower
          L17_17 = L17_17(L18_18)
          L18_18 = sigattr_tail
          L18_18 = L18_18[L16_16]
          L18_18 = L18_18.utf8p2
          L19_19 = L18_18
          L18_18 = L18_18.lower
          L18_18 = L18_18(L19_19)
          L20_20 = L17_17
          L19_19 = L17_17.match
          L21_21 = "(.*[/\\])"
          L19_19 = L19_19(L20_20, L21_21)
          L20_20 = L19_19
          L19_19 = L19_19.lower
          L19_19 = L19_19(L20_20)
          L21_21 = L18_18
          L20_20 = L18_18.match
          L22_22 = "(.*[/\\])"
          L20_20 = L20_20(L21_21, L22_22)
          L21_21 = L20_20
          L20_20 = L20_20.lower
          L20_20 = L20_20(L21_21)
          if L19_19 == L20_20 then
            L22_22 = L17_17
            L21_21 = L17_17.byte
            L23_23 = #L18_18
            L23_23 = L23_23 + 1
            L21_21 = L21_21(L22_22, L23_23)
            if L21_21 ~= 58 then
              L22_22 = L17_17
              L21_21 = L17_17.match
              L23_23 = "(.+)%..+"
              L21_21 = L21_21(L22_22, L23_23)
              L22_22 = L21_21
              L21_21 = L21_21.lower
              L21_21 = L21_21(L22_22)
              L23_23 = L18_18
              L22_22 = L18_18.match
              L22_22 = L22_22(L23_23, "(.+)%..+")
              L23_23 = L22_22
              L22_22 = L22_22.lower
              L22_22 = L22_22(L23_23)
              L23_23 = L17_17.match
              L23_23 = L23_23(L17_17, "%.[^%.]+$")
              if L23_23 and L22_22 == L21_21 and mp.GetExtensionClass(L23_23) == 0 then
                if L5_5[L23_23] ~= nil then
                  table.insert(L5_5[L23_23], L11_11)
                else
                  L5_5[L23_23] = {L11_11}
                end
                L12_12 = true
                break
              end
            end
          end
        end
      end
    end
    if L12_12 == false then
      return L13_13
    end
  end
  for L10_10, L11_11 in L7_7(L8_8) do
    L12_12 = L5_5[L10_10]
    L12_12 = #L12_12
    if L12_12 >= 4 then
      L12_12 = {}
      for L16_16 = 1, 4 do
        L17_17 = table
        L17_17 = L17_17.insert
        L18_18 = L12_12
        L19_19 = L5_5[L10_10]
        L19_19 = L19_19[L16_16]
        L17_17(L18_18, L19_19)
      end
      L23_23 = L15_15()
      L23_23 = L14_14(L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L15_15())
      if L14_14 then
      end
      L6_6.rename_ext = L10_10
      L6_6.append_size = "1:16"
      L6_6.file_paths = L12_12
      L6_6.proc_meta_info = L14_14
      L17_17 = "gen_ransom_ext_replace"
      L18_18 = L15_15
      L19_19 = bm
      L19_19 = L19_19.RelatedStringBMReport
      L16_16(L17_17, L18_18, L19_19)
      L17_17 = "GenericRansomware:ReplaceExtension2"
      L18_18 = L15_15
      L16_16(L17_17, L18_18)
      L16_16()
      L16_16()
      return L16_16
    end
  end
end
return L7_7

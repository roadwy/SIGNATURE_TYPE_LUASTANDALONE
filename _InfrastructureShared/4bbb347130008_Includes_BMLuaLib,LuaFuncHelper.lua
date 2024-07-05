local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
L2_2 = {}
L3_3 = 0
L4_4 = 0
for L8_8 = 1, L0_0 do
  L10_10 = sigattr_tail
  L10_10 = L10_10[L8_8]
  L10_10 = L10_10.attribute
  if L10_10 == 16385 then
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
        if L11_11 then
          L12_12 = mp
          L12_12 = L12_12.bitand
          L12_12 = L12_12(L13_13, L14_14)
          if L12_12 ~= 0 then
            L12_12 = {}
            if L13_13 == nil then
              L1_1[L10_10] = L8_8
              for _FORV_16_, _FORV_17_ in L13_13(L14_14, L15_15) do
                L12_12[_FORV_16_] = _FORV_17_
              end
              if L13_13 then
              else
              end
              if L13_13 > 0 then
                if L13_13 > 16 then
                  L4_4 = L4_4 + 1
                  break
                end
                if L14_14 then
                else
                end
                if L15_15 then
                else
                end
                if (L12_12.BiggestOff and tonumber(L12_12.BiggestOff) or 0) ~= 0 and L15_15 == 0 and (L12_12.SmallestOff and tonumber(L12_12.SmallestOff) or 0) == 0 and (L12_12.BiggestOff and tonumber(L12_12.BiggestOff) or 0) == L14_14 and L14_14 + 1 == (L12_12.TotalSizeWrite and tonumber(L12_12.TotalSizeWrite) or 0) and 0 < (L12_12.NumWrites and tonumber(L12_12.NumWrites) or 0) and L13_13 > 0 and L13_13 <= 16 then
                  if L3_3 >= 10 then
                    break
                  elseif L3_3 < 10 then
                    L12_12.path = L10_10
                    L2_2[L8_8] = L12_12
                  end
                  L3_3 = L3_3 + 1
                end
              end
            end
          end
        end
      end
    end
  end
end
if L4_4 == 0 and L3_3 >= 10 then
  for L10_10, L11_11 in L7_7(L8_8) do
    L12_12 = sigattr_tail
    L12_12 = L12_12[L10_10]
    L12_12 = L12_12.utf8p1
    if L13_13 ~= nil and L13_13 > 256 then
      if L13_13 == L14_14 then
        if L14_14 ~= nil then
          table.insert(L5_5, {
            FilePath = L12_12,
            Filesize = L13_13,
            MagicByte = L15_15,
            Entropy = crypto.ComputeEntropy(L14_14),
            AppendedSize = tonumber(L11_11.TotalSizeAppend),
            WriteSize = tonumber(L11_11.TotalSizeWrite)
          })
        end
      end
    end
    if L6_6 >= 5 then
      L14_14.gen_ransom_data = L5_5
      bm.add_related_string("genfb_ransom_meta", L15_15, bm.RelatedStringBMReport)
      bm.trigger_sig("GenericRansomware:FileAppendBucket1:16", L15_15)
      return mp.INFECTED
    end
  end
end
return L7_7

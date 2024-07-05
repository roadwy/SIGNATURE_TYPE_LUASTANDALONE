local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
function L0_0(A0_19)
  local L1_20, L2_21
  L1_20 = "^(.+)//"
  L2_21 = "^(.+)\\"
  if (string.match(A0_19, L1_20) or string.match(A0_19, L2_21)) ~= nil then
    return string.match(A0_19, L1_20) or string.match(A0_19, L2_21)
  else
    return nil
  end
end
L1_1 = mp
L1_1 = L1_1.SIGATTR_LOG_SZ
L2_2 = {}
L3_3 = {}
L4_4 = "%.[^%.%\\][%w_]+$"
for L8_8 = 1, L1_1 do
  L9_9 = 0
  L10_10 = sigattr_tail
  L10_10 = L10_10[L8_8]
  L10_10 = L10_10.attribute
  if L10_10 == 16385 then
    L10_10 = sigattr_tail
    L10_10 = L10_10[L8_8]
    L10_10 = L10_10.utf8p1
    L11_11 = L10_10
    L10_10 = L10_10.lower
    L10_10 = L10_10(L11_11)
    L12_12 = L10_10
    L11_11 = L10_10.byte
    L13_13 = 1
    L11_11 = L11_11(L12_12, L13_13)
    if L11_11 == 37 then
      L9_9 = 1
    end
    if L9_9 == 0 then
      L11_11 = mp
      L11_11 = L11_11.crc32
      L12_12 = 0
      L13_13 = L10_10
      L11_11 = L11_11(L12_12, L13_13, L14_14, L15_15)
      L2_2[L11_11] = 1
    end
  end
end
for L8_8 = 1, L1_1 do
  L9_9 = sigattr_tail
  L9_9 = L9_9[L8_8]
  L9_9 = L9_9.attribute
  L10_10 = 0
  if L9_9 == 16389 then
    L11_11 = sigattr_tail
    L11_11 = L11_11[L8_8]
    L11_11 = L11_11.utf8p2
    if L11_11 == "ATTR_c09458eb" then
      L11_11 = sigattr_tail
      L11_11 = L11_11[L8_8]
      L11_11 = L11_11.utf8p1
      L12_12 = L11_11
      L11_11 = L11_11.lower
      L11_11 = L11_11(L12_12)
      L13_13 = L11_11
      L12_12 = L11_11.byte
      L12_12 = L12_12(L13_13, L14_14)
      if L12_12 == 37 then
        L10_10 = 1
      end
      if L10_10 == 0 then
        L12_12 = mp
        L12_12 = L12_12.crc32
        L13_13 = 0
        L12_12 = L12_12(L13_13, L14_14, L15_15, L16_16)
        L13_13 = L2_2[L12_12]
        if L13_13 ~= nil then
          L3_3[L12_12] = 1
        end
      end
    end
  end
end
for L9_9 = 1, L1_1 do
  L10_10 = sigattr_tail
  L10_10 = L10_10[L9_9]
  L10_10 = L10_10.attribute
  if L10_10 == 16386 then
    L10_10 = sigattr_tail
    L10_10 = L10_10[L9_9]
    L10_10 = L10_10.utf8p2
    L11_11 = L10_10
    L10_10 = L10_10.lower
    L10_10 = L10_10(L11_11)
    L11_11 = sigattr_tail
    L11_11 = L11_11[L9_9]
    L11_11 = L11_11.utf8p1
    L12_12 = L11_11
    L11_11 = L11_11.lower
    L11_11 = L11_11(L12_12)
    L13_13 = L10_10
    L12_12 = L10_10.match
    L12_12 = L12_12(L13_13, L14_14)
    L13_13 = L11_11.match
    L13_13 = L13_13(L14_14, L15_15)
    if L12_12 ~= nil and L13_13 ~= nil then
      if L15_15 ~= 4 then
        if L15_15 == 0 then
          if L15_15 ~= nil then
            if L17_17 == nil then
              L17_17.dirCount = 0
              L17_17.fileCount = 0
              L5_5[L13_13] = L17_17
            end
            if L17_17 == nil then
              L17_17.dirCount = L18_18
              L17_17[L16_16] = L18_18
            end
            if L17_17 == nil then
              L17_17.fileCount = L18_18
              L17_17[L14_14] = L9_9
            end
          end
        end
      end
    end
  end
end
for L9_9, L10_10 in L6_6(L7_7) do
  L11_11 = L10_10.dirCount
  if L11_11 >= 3 then
    L11_11 = L10_10.fileCount
  else
    if not (L11_11 >= 6) then
      L11_11 = L10_10.fileCount
  end
  elseif L11_11 > 15 then
    L11_11 = bm
    L11_11 = L11_11.add_related_string
    L12_12 = "ransom_extension"
    L13_13 = L9_9
    L11_11(L12_12, L13_13, L14_14)
    L11_11 = {}
    L12_12 = bm
    L12_12 = L12_12.get_imagepath
    L12_12 = L12_12()
    L13_13 = L12_12
    L12_12 = L12_12.lower
    L12_12 = L12_12(L13_13)
    L13_13 = bm
    L13_13 = L13_13.get_current_process_startup_info
    L13_13 = L13_13()
    if L13_13 ~= nil then
      L13_13 = L13_13.ppid
    else
      L13_13 = -1
    end
    for L17_17, L18_18 in L14_14(L15_15) do
      if type(L18_18) == "table" then
        for _FORV_22_, _FORV_23_ in pairs(L18_18) do
          bm.add_related_file(sigattr_tail[_FORV_23_].utf8p1)
        end
      end
    end
    L11_11.current_image_path = L12_12
    L11_11.extension = L9_9
    L11_11.ext_data = L14_14
    for _FORV_19_, _FORV_20_ in L16_16(L17_17) do
      if _FORV_20_.image_path ~= nil then
        bm.add_related_process(_FORV_20_.ppid)
      end
    end
    for _FORV_19_, _FORV_20_ in L16_16(L17_17) do
      if _FORV_20_.image_path ~= nil then
        bm.add_related_process(_FORV_20_.ppid)
      end
    end
    L16_16(L17_17, L18_18, 700)
    L17_17(L18_18, L16_16, bm.RelatedStringBMReport)
    L17_17(L18_18, L16_16)
    L17_17(L18_18, 100)
    L17_17()
    L17_17()
    return L17_17
  end
end
return L6_6

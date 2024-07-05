local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19
function L0_0(A0_20)
  local L1_21, L2_22
  L1_21 = 0
  L2_22 = nil
  for _FORV_6_, _FORV_7_ in pairs(A0_20) do
    if _FORV_6_:match("([.%w]+)-([0-9a-fA-F]+)") ~= nil and _FORV_6_:match("([.%w]+)-([0-9a-fA-F]+)") ~= nil and _FORV_6_:match("([.%w]+)-([0-9a-fA-F]+)"):len() == 8 and _FORV_6_:match("([.%w]+)-([0-9a-fA-F]+)"):len() > 3 then
      if L2_22 == nil then
        L2_22 = _FORV_6_:match("([.%w]+)-([0-9a-fA-F]+)")
        L1_21 = L1_21 + 1
      elseif L2_22 == _FORV_6_:match("([.%w]+)-([0-9a-fA-F]+)") then
        L1_21 = L1_21 + 1
      end
    end
  end
  return L1_21
end
DefrayExtensionCheck = L0_0
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 100000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
for L5_5 = 1, L0_0 do
  L6_6 = sigattr_tail
  L6_6 = L6_6[L5_5]
  L6_6 = L6_6.attribute
  if L6_6 == 16385 then
    L6_6 = sigattr_tail
    L6_6 = L6_6[L5_5]
    L6_6 = L6_6.utf8p1
    L7_7 = L6_6
    L6_6 = L6_6.lower
    L6_6 = L6_6(L7_7)
    L7_7 = mp
    L7_7 = L7_7.crc32
    L8_8 = 0
    L7_7 = L7_7(L8_8, L9_9, L10_10, L11_11)
    L1_1[L7_7] = 1
  end
end
L5_5 = 0
L6_6 = {}
L7_7 = 0
L8_8 = 8
for L12_12 = 1, L0_0 do
  L13_13 = sigattr_tail
  L13_13 = L13_13[L12_12]
  L13_13 = L13_13.attribute
  if L13_13 == 16386 then
    L13_13 = sigattr_tail
    L13_13 = L13_13[L12_12]
    L13_13 = L13_13.utf8p2
    L14_14 = L13_13
    L13_13 = L13_13.lower
    L13_13 = L13_13(L14_14)
    L14_14 = sigattr_tail
    L14_14 = L14_14[L12_12]
    L14_14 = L14_14.utf8p1
    L15_15 = L14_14
    L14_14 = L14_14.lower
    L14_14 = L14_14(L15_15)
    L15_15 = mp
    L15_15 = L15_15.crc32
    L19_19 = #L13_13
    L15_15 = L15_15(L16_16, L17_17, L18_18, L19_19)
    L19_19 = 1
    if L17_17 == nil then
    elseif L17_17 ~= nil then
      if L17_17 == nil then
        L19_19 = "%.[^/%.]+$"
        if L17_17 ~= nil then
          L19_19 = L17_17
          if L18_18 ~= 3 then
            L19_19 = #L14_14
            if L18_18 < L19_19 then
              L19_19 = L14_14
              if L18_18 == 1 then
                L19_19 = L14_14
                if L18_18 ~= 58 then
                  L6_6[L15_15] = 1
                  L19_19 = L14_14
                  L19_19 = mp
                  L19_19 = L19_19.GetExtensionClass
                  L19_19 = L19_19(L18_18)
                  if L19_19 ~= 4 then
                    L19_19 = IsExtensionDatePattern
                    L19_19 = L19_19(L18_18)
                    if L19_19 == false then
                      L19_19 = string
                      L19_19 = L19_19.sub
                      L19_19 = L19_19(L14_14, #L13_13 + 1)
                      if L2_2[L19_19] ~= nil then
                        if L3_3[L19_19] ~= nil then
                          L3_3[L19_19] = nil
                        end
                      else
                        L2_2[L19_19] = {L12_12}
                        L5_5 = L5_5 + 1
                        L3_3[L19_19] = {L12_12}
                      end
                      if L8_8 <= L4_4 then
                        L7_7 = 1
                        break
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
  end
end
if L7_7 == 1 then
  L12_12 = string
  L12_12 = L12_12.lower
  L13_13 = bm
  L13_13 = L13_13.get_imagepath
  L19_19 = L13_13()
  L12_12 = L12_12(L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L13_13())
  L13_13 = bm
  L13_13 = L13_13.get_current_process_startup_info
  L13_13 = L13_13()
  if L13_13 ~= nil then
    L13_13 = L13_13.ppid
  else
    L13_13 = "-1"
  end
  L14_14 = AppendToRollingQueue
  L15_15 = L10_10
  L14_14(L15_15, L16_16, L17_17)
  L14_14 = AppendToRollingQueue
  L15_15 = L10_10
  L14_14(L15_15, L16_16, L17_17)
  L14_14 = DefrayExtensionCheck
  L15_15 = L3_3
  L14_14 = L14_14(L15_15)
  L15_15 = ""
  for L19_19, _FORV_20_ in L16_16(L17_17) do
    L15_15 = L15_15 .. "," .. L19_19
  end
  L19_19 = bm
  L19_19 = L19_19.RelatedStringBMReport
  L16_16(L17_17, L18_18, L19_19)
  L19_19 = L15_15
  L16_16(L17_17, L18_18, L19_19)
  for L19_19, _FORV_20_ in L16_16(L17_17) do
    for _FORV_24_, _FORV_25_ in pairs(L3_3[L19_19]) do
      bm.add_related_file(sigattr_tail[_FORV_25_].utf8p1)
      table.insert(L11_11, sigattr_tail[_FORV_25_].utf8p1)
    end
  end
  L19_19 = table
  L19_19 = L19_19.concat
  L19_19 = L19_19(L11_11, ",")
  L16_16(L17_17, L18_18, L19_19, L19_19(L11_11, ","))
  L16_16()
  L16_16()
  L19_19 = "Impact_FileEncryption"
  L16_16(L17_17, L18_18, L19_19)
  L16_16(L17_17, L18_18)
  return L16_16
end
return L9_9

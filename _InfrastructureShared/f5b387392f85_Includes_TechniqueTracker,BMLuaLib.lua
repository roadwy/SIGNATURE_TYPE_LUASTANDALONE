local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = bm
L1_1 = L1_1.GetSignatureMatchDuration
L1_1 = L1_1()
if L1_1 > 100000000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
L2_2 = L1_1
L1_1 = L1_1.lower
L1_1 = L1_1(L2_2)
if L1_1 ~= nil and L1_1 ~= "" then
  L2_2 = IsExcludedByImagePath
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L2_2 = L2_2()
if L2_2 ~= nil then
  L3_3 = L2_2.ppid
  if L3_3 ~= nil then
    L3_3 = isParentPackageManager
    L4_4 = L2_2.ppid
    L3_3 = L3_3(L4_4, L5_5)
    if L3_3 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
  end
end
L3_3 = {
  L4_4,
  L5_5,
  L6_6,
  L7_7
}
L4_4 = "/bin/"
L4_4 = {}
for L8_8 = 1, L0_0 do
  L9_9 = 0
  L10_10 = sigattr_tail
  L10_10 = L10_10[L8_8]
  L10_10 = L10_10.attribute
  if L10_10 == 16385 then
    L10_10 = sigattr_tail
    L10_10 = L10_10[L8_8]
    L10_10 = L10_10.utf8p1
    L10_10 = L10_10.lower
    L10_10 = L10_10(L11_11)
    for L14_14, L15_15 in L11_11(L12_12) do
      if L10_10:find(L15_15) ~= nil then
        L9_9 = 1
        break
      end
    end
    if L9_9 == 0 then
      L14_14 = 1
      L15_15 = #L10_10
      L4_4[L11_11] = 1
    end
  end
end
for L9_9 = 1, L0_0 do
  L10_10 = sigattr_tail
  L10_10 = L10_10[L9_9]
  L10_10 = L10_10.attribute
  if L10_10 == 16386 then
    L10_10 = sigattr_tail
    L10_10 = L10_10[L9_9]
    L10_10 = L10_10.utf8p2
    L10_10 = L10_10.lower
    L10_10 = L10_10(L11_11)
    L14_14 = L10_10
    L15_15 = 1
    L14_14 = 0
    L15_15 = L11_11
    L14_14 = L4_4[L13_13]
    if L14_14 == nil then
      L14_14 = L4_4[L12_12]
    elseif L14_14 ~= nil then
      L15_15 = L10_10
      L14_14 = L10_10.match
      L14_14 = L14_14(L15_15, "%.[^%.]+$")
      if L14_14 ~= nil then
        L15_15 = #L10_10
        if L15_15 < #L11_11 then
          L15_15 = L11_11.byte
          L15_15 = L15_15(L11_11, #L10_10 + 1)
          if L15_15 == 46 then
            L15_15 = L11_11.find
            L15_15 = L15_15(L11_11, L10_10, 1, true)
            if L15_15 == 1 then
              L15_15 = string
              L15_15 = L15_15.sub
              L15_15 = L15_15(L11_11, #L10_10 + 1)
              if L15_15 ~= nil and IsExcludedByImagePathFileExtension(L1_1, L15_15) == false and IsExcludedByImagePathFileExtensionRegEx(L1_1, L15_15) == false and IsExcludedByImagePathFileExtensionSuffix(L1_1, L15_15) == false and IsExtensionDatePattern(L15_15) == false then
                if L5_5[L15_15] ~= nil then
                  table.insert(L5_5[L15_15], L9_9)
                  if #L5_5[L15_15] >= 5 then
                    TrackPidAndTechniqueBM("BM", "T1486", "Impact_Ransom")
                    return mp.INFECTED
                  end
                else
                  L5_5[L15_15] = {L9_9}
                end
              end
            end
          end
        end
      end
    end
  end
end
return L6_6

local L0_0, L1_1, L2_2, L3_3
function L0_0(A0_4)
  local L1_5, L2_6, L3_7, L4_8, L5_9, L6_10, L7_11, L8_12, L9_13, L10_14, L11_15
  L1_5 = {}
  L1_5[".bat"] = true
  L1_5[".cmd"] = true
  L1_5[".ps1"] = true
  if L2_6 then
    if L2_6 then
      L5_9 = nil
      L6_10 = 1
      L2_6(L3_7, L4_8, L5_9, L6_10)
    end
    if L2_6 then
      for L5_9, L6_10 in L2_6(L3_7) do
        if L7_11 then
          L7_11(L8_12)
        end
      end
    end
  end
  if L2_6 then
    for L5_9, L6_10 in L2_6(L3_7) do
      if L7_11 then
        L10_14 = nil
        L11_15 = 1
        L7_11(L8_12, L9_13, L10_14, L11_15)
      end
      if L7_11 then
        for L10_14, L11_15 in L7_11(L8_12) do
          if sysio.IsFileExists(L11_15) then
            bm.add_related_file(L11_15)
          end
        end
      end
    end
  end
end
function L1_1(A0_16, A1_17)
  local L2_18, L3_19, L4_20, L5_21, L6_22, L7_23, L8_24, L9_25, L10_26, L11_27, L12_28, L13_29, L14_30, L15_31
  L2_18 = GetRollingQueue
  L3_19 = A1_17
  L2_18 = L2_18(L3_19)
  if L2_18 ~= nil then
    L3_19 = type
    L4_20 = L2_18
    L3_19 = L3_19(L4_20)
    if L3_19 == "table" then
      L4_20 = A0_16
      L3_19 = A0_16.lower
      L3_19 = L3_19(L4_20)
      L4_20 = L3_19.match
      L4_20 = L4_20(L5_21, L6_22)
      for L8_24 in L5_21(L6_22) do
        L9_25 = safeJsonDeserialize
        L10_26 = L2_18[L8_24]
        L10_26 = L10_26.key
        L9_25 = L9_25(L10_26)
        if L9_25 then
          L10_26 = L9_25.type
          if L10_26 then
            L10_26 = L9_25.event
            if L10_26 then
              L10_26 = L9_25.event
              L10_26 = L10_26.lower
              L10_26 = L10_26(L11_27)
              L14_30 = 1
              L15_31 = true
              if L11_27 then
                if L11_27 ~= nil then
                  L14_30 = "%."
                  L15_31 = "%%."
                  L14_30 = "?"
                  L15_31 = "."
                  L14_30 = "*"
                  L15_31 = "[^\\]+"
                  L14_30 = L11_27
                  if L12_28 then
                    L14_30 = L2_18[L8_24]
                    L14_30 = L14_30.key
                    L15_31 = bm
                    L15_31 = L15_31.RelatedStringBMReport
                    L12_28(L13_29, L14_30, L15_31)
                    L12_28(L13_29)
                    return L12_28
                  end
                end
                L14_30 = "\\exclusions\\extensions\\\\%W*(%w+)$"
                if L12_28 ~= nil then
                  L14_30 = L12_28
                  if L4_20 == L13_29 then
                    L14_30 = "Tampering_Events"
                    L15_31 = L2_18[L8_24]
                    L15_31 = L15_31.key
                    L13_29(L14_30, L15_31, bm.RelatedStringBMReport)
                    L14_30 = L9_25
                    L13_29(L14_30)
                    return L13_29
                  end
                end
              else
                L14_30 = 1
                L15_31 = true
                if L11_27 then
                  for L14_30 in L11_27(L12_28, L13_29) do
                    L15_31 = L14_30.match
                    L15_31 = L15_31(L14_30, "path|(.+)$")
                    if not L15_31 then
                      L15_31 = L10_26.match
                      L15_31 = L15_31(L10_26, "process|(.+)$")
                    end
                    if L15_31 ~= nil then
                      L15_31 = MpCommon.ExpandEnvironmentVariables(L15_31)
                      L15_31 = L15_31:lower():gsub("%.", "%%."):gsub("?", "."):gsub("*", "[^\\]+")
                      if L3_19:match(L15_31) then
                        bm.add_related_string("Tampering_Events", L2_18[L8_24].key, bm.RelatedStringBMReport)
                        _UPVALUE0_(L9_25)
                        return true
                      end
                    end
                    if L10_26:match("extension|%W*(%w+)$") ~= nil and L4_20 == L10_26:match("extension|%W*(%w+)$"):lower() then
                      bm.add_related_string("Tampering_Events", L2_18[L8_24].key, bm.RelatedStringBMReport)
                      _UPVALUE0_(L9_25)
                      return true
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
  L3_19 = false
  return L3_19
end
L2_2 = bm
L2_2 = L2_2.get_imagepath
L2_2 = L2_2()
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = MpCommon
L3_3 = L3_3.PathToWin32Path
L3_3 = L3_3(L2_2)
L2_2 = L3_3
L3_3 = "TamperingTracking"
if L1_1(L2_2, L3_3) then
  add_parents()
  return mp.INFECTED
end
if reportSessionInformation().User and reportSessionInformation().User.UserName then
  L3_3 = L3_3 .. "-" .. reportSessionInformation().User.UserName
  if L1_1(L2_2, L3_3) then
    add_parents()
    return mp.INFECTED
  end
end
return mp.CLEAN

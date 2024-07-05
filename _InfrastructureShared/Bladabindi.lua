local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
function L0_0(A0_8, A1_9)
  local L2_10, L3_11
  L2_10 = sysio
  L2_10 = L2_10.GetRegValueAsString
  L3_11 = A0_8
  L2_10 = L2_10(L3_11, A1_9)
  L3_11 = string
  L3_11 = L3_11.gsub
  L3_11 = L3_11(L2_10, "\" ..", "\"")
  L3_11 = string.gsub(L3_11, "\"", "")
  if sysio.IsFileExists(L3_11) then
    Remediation.BtrDeleteFile(L3_11)
  end
end
removeRunningmalicious = L0_0
function L0_0(A0_12)
  local L1_13, L2_14, L3_15, L4_16, L5_17, L6_18, L7_19, L8_20, L9_21
  L2_14 = sysio
  L2_14 = L2_14.RegExpandUserKey
  L2_14 = L2_14(L3_15)
  for L6_18, L7_19 in L3_15(L4_16) do
    if L7_19 ~= nil then
      L8_20 = sysio
      L8_20 = L8_20.RegOpenKey
      L9_21 = L7_19
      L8_20 = L8_20(L9_21)
      if L8_20 ~= nil then
        L9_21 = sysio
        L9_21 = L9_21.GetRegValueAsString
        L9_21 = L9_21(L8_20, "Startup")
        L1_13 = L9_21
        L9_21 = sysio
        L9_21 = L9_21.IsFolderExists
        L9_21 = L9_21(L1_13)
        if L9_21 then
          L9_21 = L1_13
          L9_21 = L9_21 .. "\\" .. A0_12 .. ".exe"
          if sysio.IsFileExists(L9_21) then
            Remediation.BtrDeleteFile(L9_21)
          end
        end
      end
    end
  end
end
removeStartupmalicious = L0_0
function L0_0(A0_22)
  local L1_23, L2_24, L3_25, L4_26, L5_27, L6_28, L7_29
  if A0_22 then
    L1_23 = sysio
    L1_23 = L1_23.RegEnumValues
    L1_23 = L1_23(L2_24)
    for L5_27, L6_28 in L2_24(L3_25) do
      if L6_28 ~= nil then
        L7_29 = string
        L7_29 = L7_29.match
        L7_29 = L7_29(L6_28, "^%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x$")
        if L7_29 then
          L7_29 = sysio
          L7_29 = L7_29.GetRegValueAsString
          L7_29 = L7_29(A0_22, L6_28)
          if L7_29 ~= nil and string.match(L7_29, ".exe\" ..") then
            removeRunningmalicious(A0_22, L6_28)
            removeStartupmalicious(L6_28)
            Remediation.BtrDeleteRegValue("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run\\\\" .. L6_28)
          end
        end
      end
    end
  end
end
enumhkcuregrun = L0_0
function L0_0(A0_30)
  local L1_31, L2_32, L3_33, L4_34, L5_35, L6_36, L7_37
  if A0_30 then
    L1_31 = sysio
    L1_31 = L1_31.RegEnumValues
    L1_31 = L1_31(L2_32)
    for L5_35, L6_36 in L2_32(L3_33) do
      if L6_36 ~= nil then
        L7_37 = string
        L7_37 = L7_37.match
        L7_37 = L7_37(L6_36, "^%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x$")
        if L7_37 then
          L7_37 = sysio
          L7_37 = L7_37.GetRegValueAsString
          L7_37 = L7_37(A0_30, L6_36)
          if L7_37 ~= nil and string.match(L7_37, ".exe\" ..") then
            removeRunningmalicious(A0_30, L6_36)
            removeStartupmalicious(L6_36)
            Remediation.BtrDeleteRegValue("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Run\\\\" .. L6_36)
          end
        end
      end
    end
  end
end
enumhklmregrun = L0_0
function L0_0(A0_38)
  local L1_39, L2_40, L3_41, L4_42, L5_43, L6_44, L7_45
  if A0_38 then
    L1_39 = sysio
    L1_39 = L1_39.RegEnumValues
    L1_39 = L1_39(L2_40)
    for L5_43, L6_44 in L2_40(L3_41) do
      if L6_44 ~= nil then
        L7_45 = string
        L7_45 = L7_45.match
        L7_45 = L7_45(L6_44, "^di$")
        if L7_45 then
          L7_45 = sysio
          L7_45 = L7_45.GetRegValueAsString
          L7_45 = L7_45(A0_38, L6_44)
          if L7_45 ~= nil and string.match(L7_45, "!") then
            Remediation.BtrDeleteRegValue("HKCU\\\\" .. L6_44)
          end
        end
      end
    end
  end
end
enumhkcudi = L0_0
function L0_0(A0_46)
  local L1_47, L2_48, L3_49, L4_50, L5_51, L6_52, L7_53, L8_54, L9_55, L10_56, L11_57, L12_58, L13_59, L14_60, L15_61, L16_62, L17_63, L18_64, L19_65, L20_66
  for L4_50, L5_51 in L1_47(L2_48) do
    if L5_51 then
      L6_52 = sysio
      L6_52 = L6_52.RegOpenKey
      L7_53 = L5_51
      L6_52 = L6_52(L7_53)
      if L6_52 then
        L7_53 = sysio
        L7_53 = L7_53.RegEnumKeys
        L7_53 = L7_53(L8_54)
        for L11_57, L12_58 in L8_54(L9_55) do
          if L12_58 ~= nil then
            L13_59 = string
            L13_59 = L13_59.match
            L14_60 = L12_58
            L15_61 = "^%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x$"
            L13_59 = L13_59(L14_60, L15_61)
            if L13_59 then
              L13_59 = "HKCU\\Software\\"
              L14_60 = L12_58
              L13_59 = L13_59 .. L14_60
              L14_60 = sysio
              L14_60 = L14_60.RegOpenKey
              L15_61 = L13_59
              L14_60 = L14_60(L15_61)
              if L14_60 then
                L15_61 = sysio
                L15_61 = L15_61.RegEnumValues
                L15_61 = L15_61(L16_62)
                for L19_65, L20_66 in L16_62(L17_63) do
                  if L20_66 ~= nil and (string.match(L20_66, "kl") or string.match(L20_66, "US")) then
                    Remediation.BtrDeleteRegKey(L13_59)
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
enumhkcusoft = L0_0
L0_0 = Remediation
L0_0 = L0_0.Threat
L0_0 = L0_0.Active
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.match
  L0_0 = L0_0(L1_1, L2_2)
  if L0_0 then
    L0_0 = sysio
    L0_0 = L0_0.RegExpandUserKey
    L0_0 = L0_0(L1_1)
    for L4_4, L5_5 in L1_1(L2_2) do
      if L5_5 ~= nil then
        L6_6 = sysio
        L6_6 = L6_6.RegOpenKey
        L7_7 = L5_5
        L6_6 = L6_6(L7_7)
        if L6_6 ~= nil then
          L7_7 = enumhkcuregrun
          L7_7(L6_6)
        end
      end
    end
    for L5_5, L6_6 in L2_2(L3_3) do
      if L6_6 then
        L7_7 = sysio
        L7_7 = L7_7.RegOpenKey
        L7_7 = L7_7(L6_6)
        enumhkcudi(L7_7)
      end
    end
    L3_3(L4_4)
    L5_5 = L3_3
    L4_4(L5_5)
  end
end

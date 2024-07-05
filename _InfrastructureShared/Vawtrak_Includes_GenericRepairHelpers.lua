local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
L0_0 = Remediation
L0_0 = L0_0.Threat
L0_0 = L0_0.Active
if L0_0 then
  L0_0, L1_1, L2_2 = nil, nil, nil
  L3_3 = Infrastructure_CheckProductSRPEntriesAndRemove
  L3_3()
  L3_3 = string
  L3_3 = L3_3.match
  L3_3 = L3_3(L4_4, L5_5)
  if L3_3 then
    L3_3 = sysio
    L3_3 = L3_3.RegExpandUserKey
    L3_3 = L3_3(L4_4)
    for L7_7, L8_8 in L4_4(L5_5) do
      L1_1 = L9_9
      if L1_1 then
        L0_0 = L9_9
        for L12_12, L13_13 in L9_9(L10_10) do
          if L13_13 then
            L14_14 = sysio
            L14_14 = L14_14.GetRegValueAsString
            L15_15 = L1_1
            L16_16 = L13_13
            L14_14 = L14_14(L15_15, L16_16)
            L2_2 = L14_14
            if L2_2 then
              L14_14, L15_15, L16_16 = nil, nil, nil
              L17_17 = 0
              L18_18 = string
              L18_18 = L18_18.match
              L15_15, L18_18 = L2_2, L18_18(L2_2, "^regsvr32(.+\".+\\)([^\\]+)\"$")
              L14_14 = L18_18
              L18_18 = string
              L18_18 = L18_18.match
              L18_18 = L18_18(L15_15, ".([^.]+)$")
              L16_16 = L18_18
              if L14_14 ~= nil and L15_15 ~= nil and L16_16 ~= nil and L16_16 ~= "dll" and L16_16 ~= "ocx" then
                L18_18 = string
                L18_18 = L18_18.len
                L18_18 = L18_18(L15_15)
                L17_17 = L18_18
                if L17_17 >= 8 and L17_17 <= 18 then
                  L18_18 = string
                  L18_18 = L18_18.find
                  L18_18 = L18_18(L2_2, "\"", 1, true)
                  if L18_18 then
                    L14_14 = L2_2:sub(L18_18)
                    Remediation.BtrDeleteRegValue("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run\\\\" .. L13_13)
                    if sysio.IsFileExists(L14_14) then
                      Remediation.BtrDeleteFile(L14_14)
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

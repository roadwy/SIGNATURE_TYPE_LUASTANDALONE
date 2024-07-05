local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = sysio
L0_0 = L0_0.RegExpandUserKey
L0_0 = L0_0(L1_1)
if L0_0 then
  for L4_4, L5_5 in L1_1(L2_2) do
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = string
    L7_7 = L7_7.lower
    L8_8 = L5_5
    L7_7 = L7_7(L8_8)
    L8_8 = "hkcu@s-1-5-21-"
    L9_9 = 1
    L10_10 = true
    L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
    if L6_6 then
      L6_6 = sysio
      L6_6 = L6_6.RegOpenKey
      L7_7 = L5_5
      L6_6 = L6_6(L7_7)
      if L6_6 then
        L7_7 = sysio
        L7_7 = L7_7.GetRegValueAsString
        L8_8 = L6_6
        L9_9 = ""
        L7_7 = L7_7(L8_8, L9_9)
        if L7_7 then
          L8_8 = string
          L8_8 = L8_8.match
          L9_9 = L5_5
          L10_10 = "(HKCU.-)\\"
          L8_8 = L8_8(L9_9, L10_10)
          if L8_8 then
            L9_9 = L8_8
            L10_10 = "\\Software\\Classes\\"
            L11_11 = L7_7
            L12_12 = "\\shell\\open\\command"
            L9_9 = L9_9 .. L10_10 .. L11_11 .. L12_12
            L10_10 = sysio
            L10_10 = L10_10.RegOpenKey
            L11_11 = L9_9
            L10_10 = L10_10(L11_11)
            if L10_10 then
              L11_11 = sysio
              L11_11 = L11_11.GetRegValueAsString
              L12_12 = L10_10
              L13_13 = ""
              L11_11 = L11_11(L12_12, L13_13)
              if L11_11 then
                L12_12 = string
                L12_12 = L12_12.len
                L13_13 = L11_11
                L12_12 = L12_12(L13_13)
                if L12_12 < 4 then
                  L12_12 = string
                  L12_12 = L12_12.lower
                  L13_13 = L11_11
                  L12_12 = L12_12(L13_13)
                  if L12_12 ~= "cmd" then
                    L12_12 = mp
                    L12_12 = L12_12.CLEAN
                    return L12_12
                  end
                end
                L12_12 = set_research_data
                L13_13 = "DefaultValue"
                L14_14 = L11_11
                L12_12(L13_13, L14_14, false)
                L12_12 = {}
                L13_13 = table
                L13_13 = L13_13.insert
                L14_14 = L12_12
                L13_13(L14_14, L11_11)
                L13_13 = MpCommon
                L13_13 = L13_13.SetPersistContextNoPath
                L14_14 = "UACBypassRegSetData"
                L13_13(L14_14, L12_12, 5)
                L13_13 = mp
                L13_13 = L13_13.GetScannedPPID
                L13_13 = L13_13()
                L14_14 = {}
                table.insert(L14_14, L13_13)
                MpCommon.SetPersistContextNoPath("UACBypassRegSet.A", L14_14, 5)
                mp.set_mpattribute("MpDisableCaching")
                return mp.INFECTED
              end
            end
          end
        end
      end
    end
  end
end
return L1_1

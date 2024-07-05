local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
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
    L6_6 = L6_6(L7_7, L8_8, L9_9, true)
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
          L8_8 = L8_8.len
          L9_9 = L7_7
          L8_8 = L8_8(L9_9)
          if L8_8 < 4 then
            L8_8 = string
            L8_8 = L8_8.lower
            L9_9 = L7_7
            L8_8 = L8_8(L9_9)
            if L8_8 ~= "cmd" then
              L8_8 = mp
              L8_8 = L8_8.CLEAN
              return L8_8
            end
          end
          L8_8 = set_research_data
          L9_9 = "DefaultValue"
          L8_8(L9_9, L7_7, false)
          L8_8 = mp
          L8_8 = L8_8.GetScannedPPID
          L8_8 = L8_8()
          L9_9 = {}
          table.insert(L9_9, L8_8)
          MpCommon.SetPersistContextNoPath("UACBypassRegSet.A", L9_9, 5)
          mp.set_mpattribute("MpDisableCaching")
          return mp.INFECTED
        end
      end
    end
  end
end
return L1_1

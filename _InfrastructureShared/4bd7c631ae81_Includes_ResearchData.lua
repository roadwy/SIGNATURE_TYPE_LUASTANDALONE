local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0.image_path
L1_1 = L1_1(L2_2)
L2_2 = L1_1.match
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= "slui.exe" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = sysio
L2_2 = L2_2.RegExpandUserKey
L2_2 = L2_2(L3_3)
if L2_2 then
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = string
    L8_8 = L8_8.find
    L9_9 = string
    L9_9 = L9_9.lower
    L10_10 = L7_7
    L9_9 = L9_9(L10_10)
    L10_10 = "hkcu@s-1-5-21-"
    L11_11 = 1
    L8_8 = L8_8(L9_9, L10_10, L11_11, true)
    if L8_8 then
      L8_8 = sysio
      L8_8 = L8_8.RegOpenKey
      L9_9 = L7_7
      L8_8 = L8_8(L9_9)
      if L8_8 then
        L9_9 = sysio
        L9_9 = L9_9.GetRegValueAsString
        L10_10 = L8_8
        L11_11 = ""
        L9_9 = L9_9(L10_10, L11_11)
        if L9_9 then
          L10_10 = string
          L10_10 = L10_10.len
          L11_11 = L9_9
          L10_10 = L10_10(L11_11)
          if L10_10 < 4 then
            L10_10 = string
            L10_10 = L10_10.lower
            L11_11 = L9_9
            L10_10 = L10_10(L11_11)
            if L10_10 ~= "cmd" then
              L10_10 = mp
              L10_10 = L10_10.CLEAN
              return L10_10
            end
          end
          L10_10 = set_research_data
          L11_11 = "DefaultValue"
          L10_10(L11_11, L9_9, false)
          L10_10 = mp
          L10_10 = L10_10.GetScannedPPID
          L10_10 = L10_10()
          L11_11 = {}
          table.insert(L11_11, L10_10)
          MpCommon.SetPersistContextNoPath("UACBypassRegSet.A", L11_11, 5)
          mp.set_mpattribute("MpDisableCaching")
          return mp.INFECTED
        end
      end
    end
  end
end
return L3_3

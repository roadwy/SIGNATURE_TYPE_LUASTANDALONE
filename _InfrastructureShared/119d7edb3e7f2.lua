local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L3_3 = L1_1
  L2_2 = L1_1.match
  L4_4 = "([^\\]+)$"
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 ~= "fodhelper.exe" then
    L3_3 = L1_1
    L2_2 = L1_1.match
    L4_4 = "([^\\]+)$"
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 ~= "computerdefaults.exe" then
      L3_3 = L1_1
      L2_2 = L1_1.match
      L4_4 = "([^\\]+)$"
      L2_2 = L2_2(L3_3, L4_4)
      if L2_2 ~= "wsreset.exe" then
        L3_3 = L1_1
        L2_2 = L1_1.match
        L4_4 = "([^\\]+)$"
        L2_2 = L2_2(L3_3, L4_4)
        if L2_2 ~= "slui.exe" then
          L3_3 = L1_1
          L2_2 = L1_1.match
          L4_4 = "([^\\]+)$"
          L2_2 = L2_2(L3_3, L4_4)
          if L2_2 ~= "changepk.exe" then
            L3_3 = L1_1
            L2_2 = L1_1.match
            L4_4 = "([^\\]+)$"
            L2_2 = L2_2(L3_3, L4_4)
            if L2_2 ~= "control.exe" then
              L3_3 = L1_1
              L2_2 = L1_1.match
              L4_4 = "([^\\]+)$"
              L2_2 = L2_2(L3_3, L4_4)
            end
          end
        end
      end
    end
  elseif L2_2 == "compmgmtlauncher.exe" then
    L2_2 = true
    L4_4 = L1_1
    L3_3 = L1_1.match
    L5_5 = "([^\\]+)$"
    L3_3 = L3_3(L4_4, L5_5)
    if L3_3 == "control.exe" then
      L3_3 = MpCommon
      L3_3 = L3_3.GetPersistContextCountNoPath
      L4_4 = "UACBypassExp.A!sdclt"
      L3_3 = L3_3(L4_4)
      if L3_3 == 0 then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
      L3_3 = MpCommon
      L3_3 = L3_3.GetPersistContextNoPath
      L4_4 = "UACBypassExp.A!sdclt"
      L3_3 = L3_3(L4_4)
      if L3_3 then
        L4_4 = L0_0.ppid
        L5_5 = false
        for L9_9, L10_10 in L6_6(L7_7) do
          if L10_10 == L4_4 then
            L5_5 = true
            break
          end
        end
        if L5_5 == false then
          L2_2 = false
        end
      end
    end
    if L2_2 == false then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = MpCommon
    L3_3 = L3_3.GetPersistContextCountNoPath
    L4_4 = "UACBypassExp.T!ShieldUp"
    L3_3 = L3_3(L4_4)
    if L3_3 > 0 then
      L3_3 = MpCommon
      L3_3 = L3_3.GetPersistContextNoPath
      L4_4 = "UACBypassExp.T!ShieldUp"
      L3_3 = L3_3(L4_4)
      if L3_3 then
        L4_4 = mp
        L4_4 = L4_4.GetScannedPPID
        L4_4 = L4_4()
        L5_5 = string
        L5_5 = L5_5.lower
        L11_11 = L6_6(L7_7)
        L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L6_6(L7_7))
        L10_10 = ""
        for L10_10, L11_11 in L7_7(L8_8) do
          L11_11 = string.lower(L11_11)
          if string.find(L11_11, L6_6, 1, true) then
            return mp.INFECTED
          end
          if string.len(L11_11) > 8 and (string.find(L11_11, ".bat", 1, true) or string.find(L11_11, ".cmd", 1, true) or string.find(L11_11, ".js", 1, true) or string.find(L11_11, ".vbs", 1, true) or string.find(L11_11, ".wsf", 1, true)) and string.find(L5_5, L11_11, 1, true) then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = peattributes
L0_0 = L0_0.isdamaged
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.no_security
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
  L0_0 = L0_0(L1_1)
  if L0_0 == true then
    L0_0 = mp
    L0_0 = L0_0.get_contextdata
    L1_1 = mp
    L1_1 = L1_1.CONTEXT_DATA_PROCESS_ID
    L0_0 = L0_0(L1_1)
    if L0_0 == 4 then
      L1_1, L2_2 = nil, nil
      L3_3 = MpCommon
      L3_3 = L3_3.GetPersistContextCountNoPath
      L3_3 = L3_3(L4_4)
      if L3_3 > 0 then
        L3_3 = MpCommon
        L3_3 = L3_3.GetPersistContextNoPath
        L3_3 = L3_3(L4_4)
        for L7_7, L8_8 in L4_4(L5_5) do
          L1_1, L2_2 = string.match(L8_8, "UA=([%d]+);SL=([%d]+)")
          if L1_1 ~= nil then
            L1_1 = tonumber(L1_1)
            L2_2 = tonumber(L2_2)
            break
          end
        end
      else
        L3_3 = sysio
        L3_3 = L3_3.RegOpenKey
        L3_3 = L3_3(L4_4)
        if L3_3 then
          L7_7 = "UserAuthentication"
          L1_1 = L5_5
          if L1_1 == nil then
            if L4_4 then
              L7_7 = "UserAuthentication"
              L1_1 = L5_5
            end
          end
          L7_7 = "SecurityLayer"
          L2_2 = L5_5
          if L2_2 == nil then
            if L4_4 == nil then
            end
            if L4_4 then
              L7_7 = "SecurityLayer"
              L2_2 = L5_5
            end
          end
        end
        L5_5.UserAuthentication = L1_1
        L7_7 = L1_1
        L8_8 = ";SL="
        L7_7 = table
        L7_7 = L7_7.insert
        L8_8 = L5_5
        L7_7(L8_8, L6_6)
        L7_7 = MpCommon
        L7_7 = L7_7.SetPersistContextNoPath
        L8_8 = "RDPSettings"
        L7_7(L8_8, L5_5, 3600)
      end
      if L1_1 == 1 then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      elseif L2_2 == 0 then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
      L3_3 = mp
      L3_3 = L3_3.IsTrustedFile
      L3_3 = L3_3(L4_4)
      if L3_3 == true then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
      L3_3 = mp
      L3_3 = L3_3.get_contextdata
      L3_3 = L3_3(L4_4)
      if L3_3 ~= nil then
        if L4_4 == nil then
          return L5_5
        end
        L5_5[":\\windows\\softwaredistribution"] = 1
        L5_5[":\\windows\\assembly\\nativeimage"] = 1
        L5_5[":\\program files\\cisco\\amp\\tmp\\"] = 1
        L5_5[":\\windows\\carbonblack\\store\\tm"] = 1
        L5_5[":\\program files (x86)\\trend mi"] = 1
        L5_5[":\\program files\\trend\\sprotect"] = 1
        L5_5[":\\$windows.~bt\\newos\\windows\\w"] = 1
        L5_5[":\\windows\\winsxs\\temp\\inflight"] = 1
        L5_5[":\\build_drop\\3ebuilddrop\\build"] = 1
        L5_5[":\\windows\\csc\\v2.0.6\\namespace"] = 1
        L5_5[":\\program files (x86)\\bmw\\ispi"] = 1
        L5_5[":\\program files\\sourcefire\\fir"] = 1
        L5_5[":\\programdata\\origin\\selfupdat"] = 1
        L5_5[":\\program files\\microsoft dyna"] = 1
        L5_5[":\\program files\\matlab\\r2019a\\"] = 1
        if L6_6 > 30 then
          L7_7 = L4_4
          L8_8 = 2
          L7_7 = L6_6
          L7_7 = L5_5[L6_6]
          if not L7_7 then
            L7_7 = string
            L7_7 = L7_7.find
            L8_8 = L6_6
            L7_7 = L7_7(L8_8, "\\$windows.~bt\\", 1, true)
          elseif L7_7 then
            L7_7 = mp
            L7_7 = L7_7.CLEAN
            return L7_7
          end
        end
        L7_7 = L3_3
        L8_8 = "SystemDrop"
        if not L6_6 then
          L7_7 = L3_3
          L8_8 = "SystemDrop"
          L6_6(L7_7, L8_8, 600)
        end
      end
      return L4_4
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

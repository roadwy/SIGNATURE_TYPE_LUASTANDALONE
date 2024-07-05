local L0_0, L1_1, L2_2, L3_3, L4_4
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
      L1_1 = mp
      L1_1 = L1_1.IsTrustedFile
      L2_2 = false
      L1_1 = L1_1(L2_2)
      if L1_1 == true then
        L1_1 = mp
        L1_1 = L1_1.CLEAN
        return L1_1
      end
      L1_1 = mp
      L1_1 = L1_1.get_contextdata
      L2_2 = mp
      L2_2 = L2_2.CONTEXT_DATA_FILEPATH
      L1_1 = L1_1(L2_2)
      if L1_1 ~= nil then
        L2_2 = MpCommon
        L2_2 = L2_2.PathToWin32Path
        L3_3 = L1_1
        L2_2 = L2_2(L3_3)
        if L2_2 == nil then
          L3_3 = mp
          L3_3 = L3_3.CLEAN
          return L3_3
        end
        L3_3 = {}
        L3_3[":\\windows\\softwaredistribution"] = 1
        L3_3[":\\windows\\assembly\\nativeimage"] = 1
        L3_3[":\\program files\\cisco\\amp\\tmp\\"] = 1
        L3_3[":\\windows\\carbonblack\\store\\tm"] = 1
        L3_3[":\\program files (x86)\\trend mi"] = 1
        L3_3[":\\program files\\trend\\sprotect"] = 1
        L3_3[":\\$windows.~bt\\newos\\windows\\w"] = 1
        L3_3[":\\windows\\winsxs\\temp\\inflight"] = 1
        L3_3[":\\build_drop\\3ebuilddrop\\build"] = 1
        L3_3[":\\windows\\csc\\v2.0.6\\namespace"] = 1
        L3_3[":\\program files (x86)\\bmw\\ispi"] = 1
        L3_3[":\\program files\\sourcefire\\fir"] = 1
        L3_3[":\\programdata\\origin\\selfupdat"] = 1
        L3_3[":\\program files\\microsoft dyna"] = 1
        L3_3[":\\program files\\matlab\\r2019a\\"] = 1
        L4_4 = #L2_2
        if L4_4 > 30 then
          L4_4 = string
          L4_4 = L4_4.sub
          L4_4 = L4_4(L2_2, 2, 31)
          L4_4 = L4_4.lower
          L4_4 = L4_4(L4_4)
          if L3_3[L4_4] or string.find(L4_4, "\\$windows.~bt\\", 1, true) then
            return mp.CLEAN
          end
        end
        L4_4 = MpCommon
        L4_4 = L4_4.QueryPersistContext
        L4_4 = L4_4(L1_1, "SystemDrop")
        if not L4_4 then
          L4_4 = MpCommon
          L4_4 = L4_4.AppendPersistContext
          L4_4(L1_1, "SystemDrop", 600)
        end
      end
      L2_2 = mp
      L2_2 = L2_2.INFECTED
      return L2_2
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

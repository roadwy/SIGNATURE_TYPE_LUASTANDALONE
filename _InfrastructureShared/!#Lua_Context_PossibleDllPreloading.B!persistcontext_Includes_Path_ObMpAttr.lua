local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
  L0_0 = L0_0(L1_1)
  if L0_0 then
    L0_0 = {}
    L0_0.BM_FaceFodUninstaller_EXE = "facefoduninstaller.exe"
    L0_0.BM_POWERSHELL_EXE = "powershell.exe"
    L0_0.BM_RUNDLL32_EXE = "rundll32.exe"
    L0_0.BM_OSK_EXE = "osk.exe"
    L1_1, L2_2 = nil, nil
    for L6_6, _FORV_7_ in L3_3(L4_4) do
      if mp.get_mpattribute(L6_6) then
        L1_1 = L6_6
        L2_2 = _FORV_7_
        break
      end
    end
    if L1_1 == nil or L2_2 == nil then
      return L3_3
    end
    L6_6 = L4_4(L5_5)
    if L3_3 == nil then
      return L4_4
    end
    if L4_4 > 0 then
      if L4_4 == L3_3 then
        return L4_4
      end
    end
    L6_6 = L4_4
    L6_6 = "\\"
    L6_6 = MpCommon
    L6_6 = L6_6.QueryPersistContext
    L6_6 = L6_6(L5_5, L1_1)
    if not L6_6 then
      MpCommon.AppendPersistContext(L5_5, L1_1, 100)
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

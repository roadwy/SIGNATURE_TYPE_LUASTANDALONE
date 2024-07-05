local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = peattributes
L0_0 = L0_0.isexe
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
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 == L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_FILENAME
  L7_7 = L2_2(L3_3)
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2(L3_3))
  if L1_1 ~= "msiexec.exe" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L4_4 = mp
  L4_4 = L4_4.CONTEXT_DATA_FILEPATH
  L7_7 = L3_3(L4_4)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L3_3(L4_4))
  L4_4 = L2_2
  L3_3 = L2_2.sub
  L5_5 = -17
  L3_3 = L3_3(L4_4, L5_5)
  if L3_3 == "\\windows\\system32" then
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L4_4 = mp
    L4_4 = L4_4.CONTEXT_DATA_PROCESSNAME
    L3_3 = L3_3(L4_4)
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = L3_3
    L4_4 = L4_4(L5_5)
    L6_6 = L4_4
    L5_5 = L4_4.sub
    L7_7 = 1
    L5_5 = L5_5(L6_6, L7_7, 2)
    if L5_5 == "ii" then
      L6_6 = L4_4
      L5_5 = L4_4.sub
      L7_7 = -4
      L5_5 = L5_5(L6_6, L7_7)
      if L5_5 == ".exe" then
        L5_5 = mp
        L5_5 = L5_5.get_contextdata
        L6_6 = mp
        L6_6 = L6_6.CONTEXT_DATA_PROCESSDEVICEPATH
        L5_5 = L5_5(L6_6)
        L6_6 = string
        L6_6 = L6_6.lower
        L7_7 = L5_5
        L6_6 = L6_6(L7_7)
        L7_7 = L6_6.sub
        L7_7 = L7_7(L6_6, -10)
        if L7_7 ~= "\\all users" then
          L7_7 = L6_6.sub
          L7_7 = L7_7(L6_6, -12)
          if L7_7 ~= "\\programdata" then
            L7_7 = L6_6.sub
            L7_7 = L7_7(L6_6, -17)
            if L7_7 ~= "\\application data" then
              L7_7 = L6_6.sub
              L7_7 = L7_7(L6_6, -16)
            end
          end
        elseif L7_7 == "\\appdata\\roaming" then
          L7_7 = MpCommon
          L7_7 = L7_7.PathToWin32Path
          L7_7 = L7_7(L5_5)
          L7_7 = L7_7 .. "\\" .. L4_4
          mp.ReportLowfi(L7_7, 391666626)
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

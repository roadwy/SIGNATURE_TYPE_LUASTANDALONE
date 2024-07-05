local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
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
  L8_8 = L2_2(L3_3)
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2(L3_3))
  if L1_1 ~= "svchost.exe" or L1_1 ~= "wuauclt.exe" then
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
  L8_8 = L3_3(L4_4)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L3_3(L4_4))
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
    L5_5 = #L4_4
    if not (L5_5 < 9) then
      L5_5 = #L4_4
    elseif L5_5 > 16 then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = {}
    L5_5[".exe"] = ""
    L5_5[".cmd"] = ""
    L5_5[".bat"] = ""
    L5_5[".com"] = ""
    L5_5[".pif"] = ""
    L5_5[".scr"] = ""
    L7_7 = L4_4
    L6_6 = L4_4.sub
    L8_8 = -4
    L6_6 = L6_6(L7_7, L8_8)
    L6_6 = L5_5[L6_6]
    if L6_6 then
      L7_7 = L4_4
      L6_6 = L4_4.match
      L8_8 = "^ms%l%l%l+%.%l%l%l$"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 == nil then
        L7_7 = L4_4
        L6_6 = L4_4.match
        L8_8 = "^cc%l%l%l+%.%l%l%l$"
        L6_6 = L6_6(L7_7, L8_8)
      elseif L6_6 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.get_contextdata
        L7_7 = mp
        L7_7 = L7_7.CONTEXT_DATA_PROCESSDEVICEPATH
        L6_6 = L6_6(L7_7)
        L7_7 = string
        L7_7 = L7_7.lower
        L8_8 = L6_6
        L7_7 = L7_7(L8_8)
        L8_8 = L7_7.sub
        L8_8 = L8_8(L7_7, -11)
        if L8_8 ~= "\\local\\temp" then
          L8_8 = L7_7.sub
          L8_8 = L8_8(L7_7, -20)
        elseif L8_8 == "\\local settings\\temp" then
          L8_8 = MpCommon
          L8_8 = L8_8.PathToWin32Path
          L8_8 = L8_8(L6_6)
          L8_8 = L8_8 .. "\\" .. L4_4
          mp.ReportLowfi(L8_8, 2487859005)
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

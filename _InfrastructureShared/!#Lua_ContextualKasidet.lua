local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = peattributes
L0_0 = L0_0.isexe
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.LegalCopyright
if L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0.LegalCopyright
L3_3 = "Microsoft Corporation"
L4_4 = 1
L5_5 = true
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.SCANREASON_ONOPEN
if L1_1 == L2_2 then
  L2_2 = {}
  L2_2["explorer.exe"] = ""
  L2_2["hh.exe"] = ""
  L2_2["isuninst.exe"] = ""
  L2_2["notepad.exe"] = ""
  L2_2["regedit.exe"] = ""
  L2_2["slrundll.exe"] = ""
  L2_2["taskman.exe"] = ""
  L2_2["twunk_16.exe"] = ""
  L2_2["twunk_32.exe"] = ""
  L2_2["winhelp.exe"] = ""
  L2_2["winhlp32.exe"] = ""
  L2_2["bfsvc.exe"] = ""
  L2_2["fveupdate.exe"] = ""
  L2_2["helppane.exe"] = ""
  L2_2["write.exe"] = ""
  L2_2["splwow64.exe"] = ""
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L4_4 = mp
  L4_4 = L4_4.CONTEXT_DATA_FILENAME
  L3_3 = L3_3(L4_4)
  if L3_3 == nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = string
  L4_4 = L4_4.lower
  L5_5 = L3_3
  L4_4 = L4_4(L5_5)
  L5_5 = L2_2[L4_4]
  if L5_5 then
    L5_5 = mp
    L5_5 = L5_5.get_contextdata
    L6_6 = mp
    L6_6 = L6_6.CONTEXT_DATA_FILEPATH
    L5_5 = L5_5(L6_6)
    if L5_5 == nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.lower
    L7_7 = L5_5
    L6_6 = L6_6(L7_7)
    L7_7 = L6_6.find
    L7_7 = L7_7(L6_6, "\\application data\\[^\\]+$", 1, false)
    if not L7_7 then
      L7_7 = L6_6.find
      L7_7 = L7_7(L6_6, "\\appdata\\roaming\\[^\\]+$", 1, false)
    elseif L7_7 then
      L7_7 = L6_6.find
      L7_7 = L7_7(L6_6, "microsoft", 1, true)
      if not L7_7 then
        L7_7 = L6_6.find
        L7_7 = L7_7(L6_6, "windows", 1, true)
        if not L7_7 then
          L7_7 = L6_6.find
          L7_7 = L7_7(L6_6, "installer", 1, true)
          if not L7_7 then
            L7_7 = L6_6.find
            L7_7 = L7_7(L6_6, "citrix", 1, true)
            if not L7_7 then
              L7_7 = MpCommon
              L7_7 = L7_7.PathToWin32Path
              L7_7 = L7_7(L5_5)
              L7_7 = L7_7 .. "\\" .. L3_3
              mp.ReportLowfi(L7_7, 335137860)
            end
          end
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

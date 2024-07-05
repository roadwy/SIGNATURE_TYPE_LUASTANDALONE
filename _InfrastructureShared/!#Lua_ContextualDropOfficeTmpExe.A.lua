local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = {}
    L1_1["winword.exe"] = ""
    L1_1["excel.exe"] = ""
    L1_1["powerpnt.exe"] = ""
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L4_4 = mp
    L4_4 = L4_4.CONTEXT_DATA_PROCESSNAME
    L5_5 = L3_3(L4_4)
    L2_2 = L2_2(L3_3, L4_4, L5_5, L3_3(L4_4))
    L3_3 = MpCommon
    L3_3 = L3_3.PathToWin32Path
    L4_4 = mp
    L4_4 = L4_4.get_contextdata
    L5_5 = mp
    L5_5 = L5_5.CONTEXT_DATA_PROCESSDEVICEPATH
    L5_5 = L4_4(L5_5)
    L3_3 = L3_3(L4_4, L5_5, L4_4(L5_5))
    if L3_3 == nil then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = L3_3
    L4_4 = L4_4(L5_5)
    L3_3 = L4_4
    L4_4 = L1_1[L2_2]
    if L4_4 then
      L5_5 = L3_3
      L4_4 = L3_3.sub
      L4_4 = L4_4(L5_5, 2)
      if L4_4 == ":\\program files\\microsoft office" then
        L4_4 = mp
        L4_4 = L4_4.get_contextdata
        L5_5 = mp
        L5_5 = L5_5.CONTEXT_DATA_FILENAME
        L4_4 = L4_4(L5_5)
        if L4_4 then
          L5_5 = string
          L5_5 = L5_5.lower
          L5_5 = L5_5(L4_4)
        else
          L4_4 = L5_5 or ""
        end
        L5_5 = mp
        L5_5 = L5_5.get_contextdata
        L5_5 = L5_5(mp.CONTEXT_DATA_FILEPATH)
        L5_5 = L5_5 and string.lower(L5_5) or ""
        if L5_5:sub(-5) == "\\temp" and L4_4:sub(-4) == ".exe" then
          mp.set_mpattribute("Lua:ContextualDropOfficeTmpExe.A")
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

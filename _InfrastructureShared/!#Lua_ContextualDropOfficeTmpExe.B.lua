local L0_0, L1_1, L2_2, L3_3
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
    L1_1 = mp
    L1_1 = L1_1.getfilesize
    L1_1 = L1_1()
    if L1_1 > 350000 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = mp
    L1_1 = L1_1.get_contextdata
    L2_2 = mp
    L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
    L1_1 = L1_1(L2_2)
    if L1_1 == nil then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
    if L1_1 == "excel.exe" or L1_1 == "winword.exe" or L1_1 == "powerpnt.exe" then
      L2_2 = mp
      L2_2 = L2_2.get_contextdata
      L3_3 = mp
      L3_3 = L3_3.CONTEXT_DATA_FILEPATH
      L2_2 = L2_2(L3_3)
      if L2_2 == nil then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
      L3_3 = string
      L3_3 = L3_3.lower
      L3_3 = L3_3(L2_2)
      L2_2 = L3_3
      L3_3 = mp
      L3_3 = L3_3.get_contextdata
      L3_3 = L3_3(mp.CONTEXT_DATA_FILENAME)
      if (string.sub(L3_3, -4) == ".exe" or string.sub(L3_3, -4) == ".scr" or string.sub(L3_3, -4) == ".pif") and (string.sub(L2_2, -19) == "\\appdata\\local\\temp" or string.sub(L2_2, -20) == "\\local settings\\temp") then
        mp.set_mpattribute("Lua:ContextualDropOfficeTmpExe.B")
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

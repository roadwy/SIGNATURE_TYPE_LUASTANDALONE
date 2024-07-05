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
  L1_1 = L1_1.getfilesize
  L1_1 = L1_1()
  if L1_1 > 5000 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
  L1_1 = L1_1(L2_2)
  if L1_1 == "" or L1_1 == nil then
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
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L3_3 = L3_3(mp.CONTEXT_DATA_FILENAME)
    if L2_2 == nil or L3_3 == nil then
      return mp.CLEAN
    end
    if L2_2 == "" or L3_3 == "" then
      return mp.CLEAN
    end
    L2_2 = string.lower(L2_2)
    L3_3 = string.lower(L3_3)
    if string.sub(L3_3, -4) == "gdat" then
      return mp.CLEAN
    end
    mp.set_mpattribute("Lua:SmlFileDropFrmOfc")
    if mp.get_mpattribute("BM_LNK_FILE") or string.sub(L3_3, -4) == ".cmd" or string.sub(L3_3, -4) == ".lnk" or string.sub(L3_3, -4) == ".url" then
      mp.set_mpattribute("Lua:NonPeExecDropbyOffice")
      if string.find(L2_2, "\\appdata\\local\\temp", 1, true) ~= nil or string.find(L2_2, "\\local settings\\temp", 1, true) ~= nil then
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

local L0_0, L1_1, L2_2, L3_3, L4_4
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
    L1_1 = GetSuspiciuousFileType
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L3_3 = mp
    L3_3 = L3_3.CONTEXT_DATA_FILENAME
    L4_4 = L2_2(L3_3)
    L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3))
    L2_2 = "Lua:ContextualDropFile"
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L4_4 = mp
    L4_4 = L4_4.CONTEXT_DATA_PROCESSNAME
    L3_3 = L3_3(L4_4)
    if not L3_3 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.lower
    L4_4 = L4_4(L3_3)
    L3_3 = L4_4
    L4_4 = mp
    L4_4 = L4_4.get_contextdata
    L4_4 = L4_4(mp.CONTEXT_DATA_FILEPATH)
    if not L4_4 then
      return mp.CLEAN
    end
    L4_4 = string.lower(L4_4)
    if L3_3 == "skype.exe" then
      L2_2 = L2_2 .. "Skype"
      if L4_4:find("\\skype\\my skype received files", 1, true) ~= nil then
        L2_2 = L2_2 .. "Default"
      else
        L2_2 = L2_2 .. "Ext"
      end
    elseif L3_3 == "lync.exe" then
      L2_2 = L2_2 .. "Lync"
      if L4_4:find("\\my received files", 1, true) ~= nil then
        L2_2 = L2_2 .. "Default"
      else
        L2_2 = L2_2 .. "Ext"
      end
    elseif L3_3 == "yahoomessenger.exe" then
      L2_2 = L2_2 .. "Yahoo"
      if L4_4:find("\\downloads", 1, true) ~= nil then
        L2_2 = L2_2 .. "Default"
      else
        L2_2 = L2_2 .. "Ext"
      end
    else
      return mp.CLEAN
    end
    if L1_1 then
      L2_2 = L2_2 .. L1_1
    else
      L2_2 = L2_2 .. "Any"
    end
    mp.set_mpattribute(L2_2)
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

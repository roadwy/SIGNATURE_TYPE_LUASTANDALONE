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
    L1_1 = mp
    L1_1 = L1_1.get_contextdata
    L2_2 = mp
    L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
    L1_1 = L1_1(L2_2)
    if not L1_1 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
    if L1_1 == "outlook.exe" or L1_1 == "olk.exe" then
      L2_2 = "Lua:ContextualDropFileOutlook"
      L3_3 = GetSuspiciuousFileType
      L4_4 = mp
      L4_4 = L4_4.get_contextdata
      L4_4 = L4_4(mp.CONTEXT_DATA_FILENAME)
      L3_3 = L3_3(L4_4, L4_4(mp.CONTEXT_DATA_FILENAME))
      L4_4 = mp
      L4_4 = L4_4.get_contextdata
      L4_4 = L4_4(mp.CONTEXT_DATA_FILEPATH)
      if not L4_4 then
        return mp.CLEAN
      end
      L4_4 = string.lower(L4_4)
      if L4_4:find("\\microsoft\\windows\\inetcache\\content.outlook\\", 1, true) ~= nil or L4_4:find("\\attachments\\", 1, true) ~= nil or L4_4:find("\\microsoft\\windows\\inetcache\\ie\\", 1, true) ~= nil or L4_4:find("%internet_cache%\\content.outlook\\", 1, true) ~= nil then
        L2_2 = L2_2 .. "Default"
      else
        L2_2 = L2_2 .. "Ext"
      end
      if L3_3 then
        L2_2 = L2_2 .. L3_3
      else
        L2_2 = L2_2 .. "Any"
      end
      mp.set_mpattribute(L2_2)
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

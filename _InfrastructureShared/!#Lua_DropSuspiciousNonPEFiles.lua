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
  L2_2 = L2_2.CONTEXT_DATA_FILENAME
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
  if L1_1 ~= nil then
    L2_2 = string
    L2_2 = L2_2.len
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
  elseif L2_2 < 4 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L1_1
  L4_4 = -4
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = string
  L3_3 = L3_3.sub
  L4_4 = L1_1
  L3_3 = L3_3(L4_4, -3)
  L4_4 = mp
  L4_4 = L4_4.get_contextdata
  L4_4 = L4_4(mp.CONTEXT_DATA_PROCESSNAME)
  if L4_4 == nil then
    return mp.CLEAN
  end
  L4_4 = string.lower(L4_4)
  if string.len(L4_4) < 4 then
    return mp.CLEAN
  end
  if string.sub(L4_4, -4) == ".exe" then
    if L2_2 == ".lnk" then
      mp.set_mpattribute("Lua:LNKdroppedByProcess")
    end
    if L3_3 == ".js" then
      mp.set_mpattribute("Lua:JSdroppedByProcess")
    end
    if L2_2 == ".vbs" then
      mp.set_mpattribute("Lua:VBSdroppedByProcess")
    end
    if L2_2 == ".com" then
      mp.set_mpattribute("Lua:COMdroppedByProcess")
    end
    if L2_2 == ".ps1" then
      mp.set_mpattribute("Lua:PSdroppedByProcess")
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

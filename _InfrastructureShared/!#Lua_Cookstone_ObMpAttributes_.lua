local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.enum_mpattributesubstring
L1_1 = "SCPT:Cookstone"
L0_0 = L0_0(L1_1)
L1_1 = #L0_0
if L1_1 > 0 then
  L1_1 = mp
  L1_1 = L1_1.getfilename
  L2_2 = mp
  L2_2 = L2_2.bitor
  L2_2 = L2_2(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)
  L1_1 = L1_1(L2_2, L2_2(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
  L2_2 = L1_1.find
  L2_2 = L2_2(L1_1, "mtprotostate", 1, true)
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = L1_1.find
  L2_2 = L2_2(L1_1, "\\downloads\\", 1, true)
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = L1_1.find
  L2_2 = L2_2(L1_1, "\\telegram desktop", 1, true)
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = L1_1.find
  L2_2 = L2_2(L1_1, "greenlet", 1, true)
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = L1_1.find
  L2_2 = L2_2(L1_1, "bot", 1, true)
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = mp
  L2_2 = L2_2.enum_mpattributesubstring
  L2_2 = L2_2("SCPT:CookstoneA")
  if #L2_2 > 0 and (L1_1:find("telegram", 1, true) or L1_1:find("mitm_manager", 1, true) or L1_1:find("\\telegram_testing\\", 1, true) or L1_1:find("\\mitm_tools", 1, true) or L1_1:find("\\wifibox", 1, true) or L1_1:find("\\fake_ap", 1, true)) then
    mp.set_mpattribute("Lua:CookstoneA")
  end
  L2_2 = mp.enum_mpattributesubstring("SCPT:CookstoneB")
  if #L2_2 > 0 and (L1_1:find("\\packages\\telegram\\", 1, true) or L1_1:find("mitm_manager", 1, true) or L1_1:find("\\core\\telegram_testing\\", 1, true)) then
    mp.set_mpattribute("Lua:CookstoneB")
  end
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

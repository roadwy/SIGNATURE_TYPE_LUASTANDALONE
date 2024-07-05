local L0_0, L1_1, L2_2, L3_3
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILENAME
L3_3 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2))
if L0_0 ~= nil then
  L1_1 = #L0_0
  if L1_1 > 5 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "\226\128\174"
    L1_1 = L1_1(L2_2, L3_3, 1, true)
    if L1_1 == nil then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = string
    L1_1 = L1_1.sub
    L2_2 = L0_0
    L3_3 = -7
    L1_1 = L1_1(L2_2, L3_3)
    if L1_1 ~= nil then
      L2_2 = #L1_1
    elseif L2_2 < 1 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = {}
    L2_2["\226\128\174.bat"] = "Lua:Context/RightToLeftOverride.DA"
    L2_2["\226\128\174.cmd"] = "Lua:Context/RightToLeftOverride.DA"
    L2_2["\226\128\174.lnk"] = "Lua:Context/RightToLeftOverride.DA"
    L2_2["\226\128\174.ps1"] = "Lua:Context/RightToLeftOverride.DA"
    L2_2["\226\128\174.vbe"] = "Lua:Context/RightToLeftOverride.DB"
    L2_2["\226\128\174.vbs"] = "Lua:Context/RightToLeftOverride.DB"
    L2_2["\226\128\174.js"] = "Lua:Context/RightToLeftOverride.DB"
    L2_2["\226\128\174.jse"] = "Lua:Context/RightToLeftOverride.DB"
    L2_2["\226\128\174.wsh"] = "Lua:Context/RightToLeftOverride.DB"
    L2_2["\226\128\174.wsf"] = "Lua:Context/RightToLeftOverride.DB"
    L2_2["\226\128\174.hta"] = "Lua:Context/RightToLeftOverride.DB"
    L2_2["\226\128\174.jar"] = "Lua:Context/RightToLeftOverride.DC"
    L2_2["\226\128\174.com"] = "Lua:Context/RightToLeftOverride.DD"
    L2_2["\226\128\174.exe"] = "Lua:Context/RightToLeftOverride.DD"
    L2_2["\226\128\174.scr"] = "Lua:Context/RightToLeftOverride.DD"
    L2_2["\226\128\174.pif"] = "Lua:Context/RightToLeftOverride.DD"
    L3_3 = L2_2[L1_1]
    if L3_3 == nil then
      return mp.CLEAN
    end
    mp.set_mpattribute(L3_3)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

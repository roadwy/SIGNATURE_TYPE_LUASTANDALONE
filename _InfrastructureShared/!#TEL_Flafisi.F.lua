local L0_0, L1_1, L2_2, L3_3
L0_0 = {}
L0_0["iexplore.exe"] = true
L0_0["browser_broker.exe"] = true
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.SCANREASON_ONMODIFIEDHANDLECLOSE
if L1_1 == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_PROCESSNAME
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
  L3_3 = L0_0[L2_2]
  if L3_3 == true then
    L3_3 = mp
    L3_3 = L3_3.getfilename
    L3_3 = L3_3()
    if L3_3 == nil then
      return mp.CLEAN
    end
    L3_3 = string.lower(L3_3)
    if string.find(L3_3, "flash%s*player.*.hta$") ~= nil and mp.get_mpattribute("Lua:HTAExt") and mp.get_mpattribute("RPF:TopLevelFile") then
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

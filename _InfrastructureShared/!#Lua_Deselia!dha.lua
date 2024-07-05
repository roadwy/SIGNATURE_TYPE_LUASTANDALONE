local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 20480 or L0_0 > 262144 then
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
if L1_1 ~= L2_2 then
  L2_2 = mp
  L2_2 = L2_2.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L1_1 == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_NEWLYCREATEDHINT
  L2_2 = L2_2(L3_3)
  if L2_2 == true then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L4_4 = mp
    L4_4 = L4_4.CONTEXT_DATA_FILENAME
    L4_4 = L3_3(L4_4)
    L2_2 = L2_2(L3_3, L4_4, L3_3(L4_4))
    L3_3 = string
    L3_3 = L3_3.sub
    L4_4 = L2_2
    L3_3 = L3_3(L4_4, -4)
    if L3_3 == ".exe" or L3_3 == ".cab" or L3_3 == ".dll" then
      L4_4 = string
      L4_4 = L4_4.lower
      L4_4 = L4_4(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
      if string.sub(L4_4, -35) == "\\application data\\microsoft\\network" or string.sub(L4_4, -34) == "\\appdata\\roaming\\microsoft\\network" then
        mp.set_mpattribute("Lua:Deselia!dha")
        return mp.INFECTED
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

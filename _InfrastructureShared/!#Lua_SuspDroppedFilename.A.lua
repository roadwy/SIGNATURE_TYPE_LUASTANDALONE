local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_FILENAME
  L3_3 = L2_2(L3_3)
  L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3))
  if L1_1 == "svchost.exe" then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L3_3 = L3_3(mp.CONTEXT_DATA_FILEPATH)
    L2_2 = L2_2(L3_3, L3_3(mp.CONTEXT_DATA_FILEPATH))
    L3_3 = string
    L3_3 = L3_3.sub
    L3_3 = L3_3(L2_2, -17)
    if L3_3 ~= "\\application data" then
      L3_3 = string
      L3_3 = L3_3.sub
      L3_3 = L3_3(L2_2, -16)
    elseif L3_3 == "\\appdata\\roaming" then
      L3_3 = mp
      L3_3 = L3_3.set_mpattribute
      L3_3("Lua:SuspDropped_svchost.A")
      L3_3 = mp
      L3_3 = L3_3.get_contextdata
      L3_3 = L3_3(mp.CONTEXT_DATA_FILE_ATTRIBUTES)
      if mp.bitand(L3_3, 3) ~= 0 then
        mp.set_mpattribute("Lua:SuspDropped_svchost.A!RH")
      end
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

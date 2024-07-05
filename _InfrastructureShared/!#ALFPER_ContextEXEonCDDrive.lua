local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_DEVICE_CHARACTERISTICS
  L1_1 = L1_1(L2_2)
  if L1_1 == 2305 or L1_1 == 289 or L1_1 == 262433 or L1_1 == 34 or L1_1 == 35 or L1_1 == 393249 or L1_1 == 262435 then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L3_3 = L3_3(mp.CONTEXT_DATA_FILEPATH)
    L2_2 = L2_2(L3_3, L3_3(mp.CONTEXT_DATA_FILEPATH))
    L3_3 = L2_2.find
    L3_3 = L3_3(L2_2, "^\\device\\cdrom[0-9][0-9]?$")
    if L3_3 ~= nil then
      L3_3 = mp
      L3_3 = L3_3.get_contextdata
      L3_3 = L3_3(mp.CONTEXT_DATA_FILE_ATTRIBUTES)
      if mp.bitand(L3_3, 1) == 1 and not peattributes.isdll then
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

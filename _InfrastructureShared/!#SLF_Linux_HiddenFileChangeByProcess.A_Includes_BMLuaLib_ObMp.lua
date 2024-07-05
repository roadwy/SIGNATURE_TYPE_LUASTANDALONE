local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 == 1 then
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_PROCESSDEVICEPATH
  L2_2 = L2_2(L3_3)
  if L2_2 ~= nil then
    L3_3 = #L2_2
  elseif L3_3 < 4 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  if L2_2 == "/var/tmp" or L2_2 == "/tmp" or L2_2 == "/dev/shm" or L2_2 == "/root" or L2_2 == "/home" then
    L3_3 = mp
    L3_3 = L3_3.INFECTED
    return L3_3
  end
  L3_3 = {
    L4_4,
    L5_5,
    L6_6,
    L7_7,
    L8_8
  }
  L7_7 = "/root/"
  L8_8 = "/home/"
  for L7_7, L8_8 in L4_4(L5_5) do
    if string.find(L2_2, L8_8, 1, true) == 1 then
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

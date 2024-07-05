local L0_0, L1_1, L2_2
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
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILE_AGE
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 ~= nil and L1_1 > 3600 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(string.sub(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME), -4))
if L2_2 ~= ".sys" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L2_2 = L2_2(mp.CONTEXT_DATA_FILEPATH)
if string.lower(string.sub(L2_2, -13)) ~= "\\windows\\temp" then
  return mp.CLEAN
end
if L0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if not mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) ~= "ntoskrnl.exe" then
  return mp.CLEAN
end
return mp.INFECTED

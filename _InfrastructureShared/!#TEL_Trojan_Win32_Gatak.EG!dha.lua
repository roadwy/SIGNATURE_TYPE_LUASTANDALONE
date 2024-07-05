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
  L1_1 = peattributes
  L1_1 = L1_1.no_security
  if L1_1 == false then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = mp
  L1_1 = L1_1.getfilesize
  L1_1 = L1_1()
  if L1_1 < 200000 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  if L1_1 > 900000 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = mp
  L3_3 = L3_3.getfilename
  L3_3 = L3_3()
  L2_2 = L2_2(L3_3, L3_3())
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
  if string.find(L3_3, "\\appdata\\roaming\\microsoft\\windows\\start menu\\programs\\startup", 1, true) ~= nil and string.find(L2_2, "\\%d+%.exe$") ~= nil then
    if #string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) < 12 or #string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) > 16 then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

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
  L1_1, L2_2 = nil, nil
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L3_3 = L3_3(mp.CONTEXT_DATA_FILENAME)
  if L3_3 == nil then
    L1_1 = mp.getfilename()
    if L1_1 == nil then
      return mp.CLEAN
    end
    L2_2 = L1_1:sub(-4)
  else
    L2_2 = L3_3:sub(-4)
  end
  if L2_2:lower() ~= ".vbs" and L2_2:lower() ~= ".vbe" then
    return mp.CLEAN
  end
  if L3_3 == nil then
    L3_3 = L1_1:match("([^\\]+)$")
  end
  if L3_3:match("^%a%a%a%a%a%a%a%a%a%a%.%.vbs$") ~= nil or L3_3:match("^%a%a%a%a%a%a%a%a%a%a%.%.vbe$") ~= nil then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.bitand
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_DEVICE_CHARACTERISTICS
  L1_1 = L1_1(L2_2)
  L2_2 = 264193
  L0_0 = L0_0(L1_1, L2_2)
  if L0_0 ~= 264193 then
    L0_0 = mp
    L0_0 = L0_0.bitand
    L1_1 = mp
    L1_1 = L1_1.get_contextdata
    L2_2 = mp
    L2_2 = L2_2.CONTEXT_DATA_DEVICE_CHARACTERISTICS
    L1_1 = L1_1(L2_2)
    L2_2 = 16
    L0_0 = L0_0(L1_1, L2_2)
  end
else
  if L0_0 ~= 16 then
    L0_0 = mp
    L0_0 = L0_0.get_contextdata
    L1_1 = mp
    L1_1 = L1_1.CONTEXT_DATA_SCANREASON
    L0_0 = L0_0(L1_1)
    L1_1 = mp
    L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
    if L0_0 == L1_1 then
      L0_0 = mp
      L0_0 = L0_0.get_contextdata
      L1_1 = mp
      L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
      L0_0 = L0_0(L1_1)
    end
end
elseif L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_FILENAME
  L0_0 = L0_0(L1_1)
  if nil == L0_0 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = {}
  L1_1[".hta"] = true
  L1_1[".js"] = true
  L1_1[".jse"] = true
  L1_1[".ps1"] = true
  L1_1[".vbs"] = true
  L1_1[".vbe"] = true
  L1_1[".wsh"] = true
  L2_2 = L0_0.sub
  L2_2 = L2_2(L0_0, -5)
  L2_2 = L2_2.match
  L2_2 = L2_2(L2_2, "(%.%w+)$")
  L2_2 = nil == L2_2 and "" or L2_2:lower()
  if true == L1_1[L2_2] then
    mp.set_mpattribute("Lua:CloudLowfiForE5!" .. L2_2:sub(2))
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

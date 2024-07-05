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
  L1_1 = mp
  L1_1 = L1_1.getfilesize
  L1_1 = L1_1()
  if L1_1 < 20480 or L1_1 > 3145728 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L3_3 = L3_3(mp.CONTEXT_DATA_FILENAME)
  L2_2 = L2_2(L3_3, L3_3(mp.CONTEXT_DATA_FILENAME))
  L3_3 = string
  L3_3 = L3_3.sub
  L3_3 = L3_3(L2_2, -4)
  if L3_3 == ".exe" then
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
    if (L3_3:sub(-16) == "\\appdata\\roaming" or L3_3:sub(-17) == "\\application data" or L3_3:sub(-8) == "\\startup" or L3_3:sub(-10, -9) == ":\\" and string.sub(L3_3, -8) == string.sub(L2_2, 0, 8)) and L2_2:find("^[0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f].exe") == 1 then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

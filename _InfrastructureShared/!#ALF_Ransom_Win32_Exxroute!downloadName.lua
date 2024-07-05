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
elseif L0_0 == L1_1 then
  L1_1 = peattributes
  L1_1 = L1_1.isdll
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.getfilesize
    L1_1 = L1_1()
    if L1_1 > 17664 and L1_1 < 1200128 then
      L2_2 = string
      L2_2 = L2_2.lower
      L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
      if string.find(L2_2, "api%-ms%-win%-system%-%w+%-l1%-1%-0%.dll") then
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

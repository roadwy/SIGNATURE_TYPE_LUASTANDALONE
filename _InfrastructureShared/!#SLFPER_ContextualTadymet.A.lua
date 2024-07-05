local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L2_2 = L2_2(mp.CONTEXT_DATA_FILENAME)
  L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_FILENAME))
  if L1_1 == "my.dat" then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
    if L2_2:len() > 7 and string.sub(L2_2, -5) == "\\temp" and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "mediaget.exe" then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

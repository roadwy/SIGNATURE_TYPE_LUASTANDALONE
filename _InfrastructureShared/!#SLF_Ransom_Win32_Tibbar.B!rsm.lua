local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.getfilename
  L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
  if L1_1 ~= nil and L1_1:len() > 7 and (string.sub(L1_1, -8) == "cscc.dat" or string.sub(L1_1, -10) == "infpub.dat") and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)) ~= nil and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):len() > 9 and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):find("\\windows\\", 1, true) ~= nil then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

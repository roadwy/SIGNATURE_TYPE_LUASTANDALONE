local L0_0, L1_1
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
  L1_1 = L1_1(mp.CONTEXT_DATA_HAS_MOTW_ADS)
  if L1_1 == true then
    L1_1 = mp
    L1_1 = L1_1.GetMOTWZone
    L1_1 = L1_1()
    if L1_1 >= 3 then
      L1_1 = mp
      L1_1 = L1_1.getfilename
      L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
      if string.sub(L1_1, -4) ~= ".msi" then
        return mp.CLEAN
      end
      if mp.readu_u32(headerpage, 1) == 3759263696 then
        return mp.INFECTED
      end
      return mp.CLEAN
    end
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

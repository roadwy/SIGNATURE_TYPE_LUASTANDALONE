local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.getfilename
  L1_1 = mp
  L1_1 = L1_1.bitor
  L2_2 = mp
  L2_2 = L2_2.bitor
  L3_3 = mp
  L3_3 = L3_3.FILEPATH_QUERY_FNAME
  L2_2 = L2_2(L3_3, mp.FILEPATH_QUERY_PATH)
  L3_3 = mp
  L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
  L3_3 = L1_1(L2_2, L3_3)
  L1_1 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2, L3_3))
  if L0_0 ~= nil then
    L3_3 = L0_0
    L2_2 = L0_0.len
    L2_2 = L2_2(L3_3)
    if L2_2 > 10 and L1_1 ~= nil then
      L3_3 = L1_1
      L2_2 = L1_1.len
      L2_2 = L2_2(L3_3)
      if L2_2 > 31 then
        L3_3 = L0_0
        L2_2 = L0_0.find
        L2_2 = L2_2(L3_3, "\\backups\\", 1, true)
        if not L2_2 then
          L3_3 = L0_0
          L2_2 = L0_0.find
          L2_2 = L2_2(L3_3, "\\sharedcache\\resfiles\\", 1, true)
          if not L2_2 then
            L3_3 = L0_0
            L2_2 = L0_0.find
            L2_2 = L2_2(L3_3, "\\.git\\", 1, true)
          end
        elseif L2_2 then
          L2_2 = mp
          L2_2 = L2_2.CLEAN
          return L2_2
        end
        L2_2 = string
        L2_2 = L2_2.sub
        L3_3 = L1_1
        L2_2 = L2_2(L3_3, -5)
        L3_3 = L2_2.find
        L3_3 = L3_3(L2_2, ".", 1, true)
        if not L3_3 then
          L3_3 = mp
          L3_3 = L3_3.CLEAN
          return L3_3
        end
        L3_3 = L1_1.match
        L3_3 = L3_3(L1_1, "[0-9a-f]+%.")
        if L3_3 == nil or L3_3:len() < 31 or string.find(L3_3, "[0-9]", 1) == nil or string.find(L3_3, "[a-f]", 1) == nil then
          return mp.CLEAN
        end
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

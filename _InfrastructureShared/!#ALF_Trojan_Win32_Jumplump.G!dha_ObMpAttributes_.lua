local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L2_2 = L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE)
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 ~= nil then
  L2_2 = L0_0
  L1_1 = L0_0.find
  L1_1 = L1_1(L2_2, "applicationframe", 1, true)
  if not L1_1 then
    L2_2 = L0_0
    L1_1 = L0_0.find
    L1_1 = L1_1(L2_2, "wmiprvsd", 1, true)
    if not L1_1 then
      L2_2 = L0_0
      L1_1 = L0_0.find
      L1_1 = L1_1(L2_2, "wuapi", 1, true)
      if not L1_1 then
        L2_2 = L0_0
        L1_1 = L0_0.find
        L1_1 = L1_1(L2_2, "propsys", 1, true)
        if not L1_1 then
          L2_2 = L0_0
          L1_1 = L0_0.find
          L1_1 = L1_1(L2_2, "wbemprox", 1, true)
          if not L1_1 then
            L2_2 = L0_0
            L1_1 = L0_0.find
            L1_1 = L1_1(L2_2, "actioncenter", 1, true)
          end
        end
      end
    end
  elseif L1_1 then
    L1_1 = {}
    L1_1.ShareProviderInitialize = ""
    L1_1.ShareProviderUninitialize = ""
    L1_1.ShareProviderShareAdd = ""
    L1_1.ShareProviderShareSetInfo = ""
    L1_1.ShareProviderShareDel = ""
    L2_2 = pe
    L2_2 = L2_2.get_exports
    L2_2 = L2_2()
    if L2_2 > 3 then
      for _FORV_7_ = 1, L2_2 do
        if L1_1[pe.mmap_string_rva(L2_2()[_FORV_7_].namerva, 64)] then
          return mp.INFECTED
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

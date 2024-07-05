local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
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
  if L0_0 == true then
    L0_0 = mp
    L0_0 = L0_0.getfilename
    L1_1 = mp
    L1_1 = L1_1.bitor
    L2_2 = mp
    L2_2 = L2_2.bitor
    L3_3 = mp
    L3_3 = L3_3.FILEPATH_QUERY_FNAME
    L2_2 = L2_2(L3_3, L4_4)
    L3_3 = mp
    L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
    L8_8 = L1_1(L2_2, L3_3)
    L1_1 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L1_1(L2_2, L3_3))
    if L1_1 ~= nil then
      L3_3 = L1_1
      L2_2 = L1_1.sub
      L2_2 = L2_2(L3_3, L4_4)
      if ".exe" == L2_2 then
        L2_2 = mp
        L2_2 = L2_2.get_contextdata
        L3_3 = mp
        L3_3 = L3_3.CONTEXT_DATA_PROCESSNAME
        L2_2 = L2_2(L3_3)
        L3_3 = L2_2
        L2_2 = L2_2.lower
        L2_2 = L2_2(L3_3)
        if "powershell.exe" == L2_2 then
          L3_3 = L0_0
          L2_2 = L0_0.find
          L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
          if nil ~= L2_2 then
            L2_2 = mp
            L2_2 = L2_2.set_mpattribute
            L3_3 = "LUA:PowershellDropsNewPEInAppDataPath.A"
            L2_2(L3_3)
          end
          L2_2 = IsChainNPath
          L3_3 = L0_0
          L2_2 = L2_2(L3_3)
          if false == L2_2 then
            L2_2 = MpCommon
            L2_2 = L2_2.QueryPersistContextNoPath
            L3_3 = "CLF_AM"
            L2_2 = L2_2(L3_3, L4_4)
            if L2_2 then
              L2_2 = mp
              L2_2 = L2_2.set_mpattribute
              L3_3 = "Lua:OfcUsrTruDocRecPsNewPeDrop"
              L2_2(L3_3)
            end
            L2_2 = false
            L3_3 = MpCommon
            L3_3 = L3_3.QueryPersistContextNoPath
            L3_3 = L3_3(L4_4, L5_5)
            if L3_3 then
              L3_3 = mp
              L3_3 = L3_3.set_mpattribute
              L3_3(L4_4)
              L2_2 = true
            end
            L3_3 = MpCommon
            L3_3 = L3_3.QueryPersistContextNoPath
            L3_3 = L3_3(L4_4, L5_5)
            if L3_3 then
              L3_3 = mp
              L3_3 = L3_3.set_mpattribute
              L3_3(L4_4)
              L2_2 = true
            end
            if L2_2 then
              L3_3 = MpCommon
              L3_3 = L3_3.GetPersistContextNoPath
              L3_3 = L3_3(L4_4)
              for L7_7, L8_8 in L4_4(L5_5) do
                mp.ReportLowfi(L8_8, 1933116662)
              end
            end
            L3_3 = mp
            L3_3 = L3_3.INFECTED
            return L3_3
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

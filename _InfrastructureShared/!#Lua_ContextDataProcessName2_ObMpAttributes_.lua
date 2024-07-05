local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
  L0_0 = L0_0(L1_1)
  if L0_0 == nil then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
  L1_1 = mp
  L1_1 = L1_1.set_mpattribute
  L2_2 = "Lua:OpenFileContextDataPresent"
  L1_1(L2_2)
  L1_1 = mp
  L1_1 = L1_1.set_mpattribute
  L2_2 = "Lua:OpenFileContextData:ProcName!"
  L3_3 = L0_0
  L2_2 = L2_2 .. L3_3
  L1_1(L2_2)
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.set_mpattribute
    L2_2 = "Lua:OpenFileForCreatingProcess"
    L1_1(L2_2)
  end
  L1_1 = mp
  L1_1 = L1_1.getfilename
  L2_2 = mp
  L2_2 = L2_2.bitor
  L3_3 = mp
  L3_3 = L3_3.bitor
  L4_4 = mp
  L4_4 = L4_4.FILEPATH_QUERY_FNAME
  L5_5 = mp
  L5_5 = L5_5.FILEPATH_QUERY_PATH
  L3_3 = L3_3(L4_4, L5_5)
  L4_4 = mp
  L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
  L5_5 = L2_2(L3_3, L4_4)
  L2_2 = L1_1(L2_2, L3_3, L4_4, L5_5, L2_2(L3_3, L4_4))
  if L2_2 ~= nil then
    L3_3 = mp
    L3_3 = L3_3.set_mpattribute
    L4_4 = "Lua:OpenFileContextData:FileName!"
    L5_5 = L2_2
    L4_4 = L4_4 .. L5_5
    L3_3(L4_4)
  end
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L4_4 = mp
  L4_4 = L4_4.CONTEXT_DATA_AMSI_OPERATION_PPID
  L3_3 = L3_3(L4_4)
  if L3_3 ~= nil then
    L4_4 = mp
    L4_4 = L4_4.GetParentProcInfo
    L5_5 = L3_3
    L4_4 = L4_4(L5_5)
    if L4_4 ~= nil then
      L5_5 = L4_4.image_path
      if L5_5 ~= nil then
        L5_5 = string
        L5_5 = L5_5.lower
        L5_5 = L5_5(string.match(L4_4.image_path, "([^\\]+)$"))
        if L5_5 ~= nil then
          mp.set_mpattribute("Lua:OpenFileContextData:Parent!" .. L5_5)
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

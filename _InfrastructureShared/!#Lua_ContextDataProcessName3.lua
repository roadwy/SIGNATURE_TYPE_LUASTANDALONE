local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 == L1_1 then
  L0_0 = pcall
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_AMSI_APPNAME
  L1_1 = L0_0(L1_1, L2_2)
  if L0_0 and L1_1 ~= nil then
    L2_2 = mp
    L2_2 = L2_2.set_mpattribute
    L3_3 = "Lua:AmsiAppContextDataPresent"
    L2_2(L3_3)
    L2_2 = mp
    L2_2 = L2_2.set_mpattribute
    L3_3 = "Lua:AmsiAppContextData:Proc:"
    L4_4 = L1_1
    L3_3 = L3_3 .. L4_4
    L2_2(L3_3)
  end
  L2_2 = pcall
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L4_4 = mp
  L4_4 = L4_4.CONTEXT_DATA_AMSI_CONTENTNAME
  L3_3 = L2_2(L3_3, L4_4)
  if L2_2 and L3_3 ~= nil then
    L4_4 = mp
    L4_4 = L4_4.set_mpattribute
    L5_5 = "Lua:AmsiAppContextData:File:"
    L6_6 = L3_3
    L5_5 = L5_5 .. L6_6
    L4_4(L5_5)
  end
  L4_4 = mp
  L4_4 = L4_4.get_contextdata
  L5_5 = mp
  L5_5 = L5_5.CONTEXT_DATA_PROCESS_PPID
  L4_4 = L4_4(L5_5)
  if L4_4 ~= nil then
    L5_5 = mp
    L5_5 = L5_5.GetParentProcInfo
    L6_6 = L4_4
    L5_5 = L5_5(L6_6)
    if L5_5 ~= nil then
      L6_6 = L5_5.image_path
      if L6_6 ~= nil then
        L6_6 = string
        L6_6 = L6_6.lower
        L6_6 = L6_6(string.match(L5_5.image_path, "([^\\]+)$"))
        if L6_6 ~= nil then
          mp.set_mpattribute("Lua:AmsiAppContextData:Parent!" .. L6_6)
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

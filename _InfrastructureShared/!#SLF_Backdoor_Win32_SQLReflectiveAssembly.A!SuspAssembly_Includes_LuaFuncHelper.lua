local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.enum_mpattributesubstring
L1_1 = "SLF:Backdoor:MSIL/SuspSQLAssembly."
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = #L0_0
elseif L1_1 == 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.enum_mpattributesubstring
L2_2 = "Lua:PeOriginalName!"
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = #L1_1
elseif L2_2 == 0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = mp
L3_3 = L3_3.get_contextdata
L8_8 = L3_3(L4_4)
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L3_3(L4_4))
if L2_2 == "sqlservr.exe" then
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L3_3 = L3_3(L4_4)
  if L3_3 ~= nil then
    for L7_7, L8_8 in L4_4(L5_5) do
      TT_SendBMSigTrigger(L3_3, "SuspSQLModuleName", L8_8)
    end
  end
  return L4_4
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3

local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONOPEN
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  end
elseif L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = #L1_1
  if not (L2_2 < 4) then
    L2_2 = #L1_1
  end
elseif L2_2 > 50 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 == "powershell.exe" then
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_PROCESS_PPID
  L2_2 = L2_2(L3_3)
  if L2_2 == nil then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = mp
  L3_3 = L3_3.GetProcessCommandLine
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  if L3_3 == nil then
    L4_4 = #L3_3
    if L4_4 <= 5 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
  end
  L4_4 = string
  L4_4 = L4_4.lower
  L5_5 = string
  L5_5 = L5_5.gsub
  L6_6 = L3_3
  L6_6 = L5_5(L6_6, " ", "")
  L4_4 = L4_4(L5_5, L6_6, L5_5(L6_6, " ", ""))
  L5_5 = "Lua:ProcCmdLineContext.A!"
  L6_6 = #L4_4
  if L6_6 > 100 then
    L6_6 = #L4_4
    if L6_6 < 350 then
      L6_6 = string
      L6_6 = L6_6.find
      L6_6 = L6_6(L4_4, "-command\"if(get-command'get-windowsfeature'-erroractionsilentlycontinue){get-windowsfeature-nameweb-server|convertto-json|out-file", 1, true)
      if L6_6 ~= nil then
        L6_6 = L5_5
        L6_6 = L6_6 .. "PsAzureArc"
        mp.set_mpattribute(L6_6)
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

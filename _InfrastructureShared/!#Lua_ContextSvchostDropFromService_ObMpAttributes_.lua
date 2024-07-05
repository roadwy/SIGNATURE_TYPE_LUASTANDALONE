local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = ""
else
  L1_1 = L1_1 or L0_0
end
L2_2 = L1_1
L1_1 = L1_1.lower
L1_1 = L1_1(L2_2)
L0_0 = L1_1
if L0_0 ~= "svchost.exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESS_PPID
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.GetProcessCommandLine
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = ""
else
  L3_3 = L3_3 or L2_2
end
L4_4 = L3_3
L3_3 = L3_3.lower
L3_3 = L3_3(L4_4)
L2_2 = L3_3
L3_3 = string
L3_3 = L3_3.match
L4_4 = L2_2
L5_5 = "-s%s+([^%s]+)"
L3_3 = L3_3(L4_4, L5_5)
L4_4 = string
L4_4 = L4_4.match
L5_5 = L2_2
L4_4 = L4_4(L5_5, "-k%s+([^%s]+)")
if L3_3 ~= nil then
  L5_5 = L3_3.len
  L5_5 = L5_5(L3_3)
  if L5_5 < 100 then
    L5_5 = mp
    L5_5 = L5_5.set_mpattribute
    L5_5("Lua:ContextSvchostDropFromService:" .. L3_3)
  end
elseif L4_4 ~= nil then
  L5_5 = L4_4.len
  L5_5 = L5_5(L4_4)
  if L5_5 < 100 then
    L5_5 = mp
    L5_5 = L5_5.set_mpattribute
    L5_5("Lua:ContextSvchostDropFromService:" .. L4_4)
  end
else
  L5_5 = mp
  L5_5 = L5_5.set_mpattribute
  L5_5("Lua:ContextSvchostDropFromService")
end
L5_5 = mp
L5_5 = L5_5.getfilename
L5_5 = L5_5()
if not mp.IsKnownFriendlyFile(L5_5, true, false) and L3_3 ~= nil and L3_3 == "winhttpautoproxysvc" then
  mp.ReportLowfi(L5_5, 5866790093402)
end
return mp.CLEAN

local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {}
L0_0["cmd.exe"] = true
L0_0["conhost.exe"] = true
L0_0["cscript.exe"] = true
L0_0["java.exe"] = true
L0_0["javaw.exe"] = true
L0_0["mshta.exe"] = true
L0_0["powershell.exe"] = true
L0_0["rundll32.exe"] = true
L0_0["wscript.exe"] = true
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = ""
else
  L2_2 = L2_2 or L1_1
end
L3_3 = L2_2
L2_2 = L2_2.lower
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = L0_0[L1_1]
if L2_2 ~= true then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.GetPersistContext
L3_3 = mp
L3_3 = L3_3.getfilename
L8_8 = L3_3()
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L3_3())
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = false
for L7_7, L8_8 in L4_4(L5_5) do
  if string.lower(L8_8) == "contextualofficecreaterunnablecontent" then
    L3_3 = true
    break
  end
end
if not L3_3 then
  return L4_4
end
return L4_4

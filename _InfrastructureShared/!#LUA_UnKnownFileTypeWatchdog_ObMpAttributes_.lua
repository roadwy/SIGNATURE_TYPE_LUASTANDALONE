local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 1280 or L0_0 > 1048576 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.SCANREASON_ONMODIFIEDHANDLECLOSE
if L1_1 ~= L2_2 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_FILEPATH
L8_8 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2(L3_3))
if L1_1 == nil then
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
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = #L1_1
if not (L3_3 < 4) then
  L3_3 = #L1_1
elseif L3_3 > 512 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L1_1.match
L3_3 = L3_3(L4_4, L5_5)
if L3_3 ~= nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  L8_8,
  "tmp",
  "thumbs",
  "tmp",
  "windows",
  "winnt"
}
L7_7 = "system volume information"
L8_8 = "temp"
for L7_7, L8_8 in L4_4(L5_5) do
  if string.find(L1_1, L8_8) then
    return mp.CLEAN
  end
end
if L4_4 == nil then
else
end
L7_7 = mp
L7_7 = L7_7.CONTEXT_DATA_PROCESSDEVICEPATH
L8_8 = L6_6(L7_7)
if L5_5 == nil then
else
end
L7_7 = L6_6
L7_7 = "\\"
L8_8 = L4_4
L7_7 = MpCommon
L7_7 = L7_7.QueryPersistContext
L8_8 = L6_6
L7_7 = L7_7(L8_8, "contextualpersistdropnewexepe")
L8_8 = MpCommon
L8_8 = L8_8.QueryPersistContext
L8_8 = L8_8(L6_6, L1_1)
if L7_7 and not L8_8 then
  MpCommon.AppendPersistContext(L6_6, L1_1, 120)
  if MpCommon.GetPersistContext(L6_6) ~= nil and 4 < #MpCommon.GetPersistContext(L6_6) then
    mp.ReportLowfi(L6_6, 3613929297)
  end
end
return mp.CLEAN

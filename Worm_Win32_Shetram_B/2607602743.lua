local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = string
L2_2 = L2_2.sub
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_FILENAME
L3_3 = L3_3(L4_4)
L4_4 = -9
L5_5 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L2_2(L3_3, L4_4))
if L1_1 ~= " copy.lnk" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1["cpufix.exe"] = true
L1_1["antiusb.exe"] = true
L1_1["streamer.exe"] = true
L1_1["radnewage.exe"] = true
L1_1["cpuchecker.exe"] = true
L1_1["winddowsupdater.exe"] = true
L2_2 = string
L2_2 = L2_2.lower
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_PROCESSNAME
L5_5 = L3_3(L4_4)
L2_2 = L2_2(L3_3, L4_4, L5_5, L3_3(L4_4))
L3_3 = {}
L4_4 = 0
L5_5 = mp
L5_5 = L5_5.getfilename
L5_5 = L5_5()
for _FORV_9_ in string.gmatch(L5_5, "[^\\]+") do
  L4_4 = L4_4 + 1
  L3_3[L4_4] = _FORV_9_
end
if #L3_3 >= 2 and string.len(L3_3[#L3_3]) == string.len(L3_3[#L3_3 - 1]) + 9 and string.sub(L3_3[#L3_3], 1, string.len(L3_3[#L3_3 - 1])) == L3_3[#L3_3 - 1] then
  if L1_1[L2_2] == true then
    return mp.INFECTED
  else
    mp.ReportLowfi(L5_5, 2621711671)
  end
end
return mp.CLEAN

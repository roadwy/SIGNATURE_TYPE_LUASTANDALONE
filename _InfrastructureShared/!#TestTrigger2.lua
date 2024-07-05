local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_CONTROL_GUID
L1_1 = L0_0(L1_1, L2_2)
if L0_0 and L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.match
  L3_3 = L1_1
  L4_4 = "6e6b5b2a%-ec7e%-4f25%-95bb%-504bb437e95e"
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 then
    L2_2 = pcall
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L4_4 = mp
    L4_4 = L4_4.CONTEXT_DATA_URL
    L3_3 = L2_2(L3_3, L4_4)
    if L2_2 and L3_3 ~= nil then
      L4_4 = string
      L4_4 = L4_4.match
      L5_5 = L3_3
      L4_4 = L4_4(L5_5, "RequestIeBlockPage")
      if L4_4 then
        L4_4 = mp
        L4_4 = L4_4.set_mpattribute
        L5_5 = "RequestIeBlockPage"
        L4_4(L5_5)
      end
      L4_4 = string
      L4_4 = L4_4.match
      L5_5 = L3_3
      L4_4 = L4_4(L5_5, "RequestIeBlockControl")
      if L4_4 then
        L4_4 = mp
        L4_4 = L4_4.set_mpattribute
        L5_5 = "RequestIeBlockControl"
        L4_4(L5_5)
      end
    end
    L4_4 = pcall
    L5_5 = mp
    L5_5 = L5_5.get_contextdata
    L5_5 = L4_4(L5_5, mp.CONTEXT_DATA_CONTROL_HTML)
    if L4_4 and L5_5 ~= nil then
      if string.match(L5_5, "ievtestflag='{dbcbb885%-65d3%-497e%-ae63%-6a2ee5effd62}'") then
        mp.set_mpattribute("RequestIeBlockPage")
      end
      if string.match(L5_5, "ievtestflag='{04ddafef%-cb54%-4caa%-9060%-59cf0dea1aae}'") then
        mp.set_mpattribute("RequestIeBlockControl")
      end
    end
    return mp.TRUE
  end
end
L2_2 = mp
L2_2 = L2_2.FALSE
return L2_2

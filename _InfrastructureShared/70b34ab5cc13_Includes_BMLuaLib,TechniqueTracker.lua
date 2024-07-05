local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.command_line
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = L0_0.command_line
    L1_1 = L1_1(L2_2)
    L3_3 = L1_1
    L2_2 = L1_1.match
    L4_4 = "maxsize=([0-9%.]*)%%"
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 ~= nil then
      L3_3 = tonumber
      L4_4 = L2_2
      L3_3 = L3_3(L4_4)
      L2_2 = L3_3
      if L2_2 > 4 then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
    end
    L4_4 = L1_1
    L3_3 = L1_1.match
    L3_3 = L3_3(L4_4, "maxsize=([0-9%.]*)gb")
    if L3_3 ~= nil then
      L4_4 = tonumber
      L4_4 = L4_4(L3_3)
      L3_3 = L4_4
      if L3_3 > 1 then
        L4_4 = mp
        L4_4 = L4_4.CLEAN
        return L4_4
      end
    end
    L4_4 = L1_1.match
    L4_4 = L4_4(L1_1, "maxsize=([0-9%.]*)mb")
    if L4_4 ~= nil then
      L4_4 = tonumber(L4_4)
      if L4_4 > 1000 then
        return mp.CLEAN
      end
    end
    if L1_1:match("maxsize=unbounded") then
      return mp.CLEAN
    end
    AddResearchData(L0_0.ppid, true)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

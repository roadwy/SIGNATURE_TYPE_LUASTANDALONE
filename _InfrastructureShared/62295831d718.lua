local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "/Lua:Worm:JS/Bondat.A!lnk"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "PACKED_WITH:[CMDEmbedded]"
  L0_0 = L0_0(L1_1)
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.GetBruteMatchData
    L0_0 = L0_0()
    L1_1 = L0_0.match_offset
    if L1_1 ~= 2 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = L0_0.is_header
    if L1_1 then
      L1_1 = mp
      L1_1 = L1_1.getfilesize
      L1_1 = L1_1()
      L2_2 = 256
      L3_3 = L1_1 - 2
      if L2_2 > L3_3 then
        L2_2 = L1_1 - 2
      end
      L3_3 = mp
      L3_3 = L3_3.readprotection
      L4_4 = false
      L3_3(L4_4)
      L3_3 = mp
      L3_3 = L3_3.readfile
      L4_4 = L0_0.match_offset
      L3_3 = L3_3(L4_4, L2_2)
      L4_4 = L3_3
      L3_3 = L3_3.lower
      L3_3 = L3_3(L4_4)
      L4_4 = L3_3.match
      L4_4 = L4_4(L3_3, "\\users\\[^\\]+\\appdata\\roaming\\%l+\\%w+%.exe%z\"(%w:\\users\\[^\\]+\\appdata\\roaming\\%l+\\%l+%.js)\"%z")
      if L4_4 ~= nil then
        mp.ReportLowfi(L4_4, 593118850)
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L4_4 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1())
L2_2 = L0_0
L1_1 = L0_0.match
L3_3 = "(.+\\)([^\\]+)$"
L2_2 = L1_1(L2_2, L3_3)
L4_4 = L1_1
L3_3 = L1_1.len
L3_3 = L3_3(L4_4)
if L3_3 > 8 then
  L3_3 = string
  L3_3 = L3_3.sub
  L4_4 = L1_1
  L3_3 = L3_3(L4_4, -7)
  if L3_3 == "\\tasks\\" then
    L3_3 = mp
    L3_3 = L3_3.HEADERPAGE_SZ
    if L3_3 <= 4096 then
      L3_3 = tostring
      L4_4 = headerpage
      L3_3 = L3_3(L4_4)
      L4_4 = L3_3.match
      L4_4 = L4_4(L3_3, "<Exec>.+<Command>(.+)</Command>")
      if L4_4 ~= nil and L4_4:len() > 5 and string.sub(L4_4, -4) == ".bat" then
        mp.ReportLowfi(L4_4, 203848782)
      end
    end
    L3_3 = mp
    L3_3 = L3_3.INFECTED
    return L3_3
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3

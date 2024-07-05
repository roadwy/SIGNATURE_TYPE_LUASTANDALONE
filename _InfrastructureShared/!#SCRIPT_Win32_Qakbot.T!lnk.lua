local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCRIPT:Qakbot.T!lnk"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = tostring
  L2_2 = headerpage
  L3_3 = L1_1(L2_2)
  L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2))
  L1_1 = string
  L1_1 = L1_1.match
  L2_2 = L0_0
  L3_3 = "\\microsoft\\(%a+)\\(%a+)%.exe"
  L2_2 = L1_1(L2_2, L3_3)
  if L1_1 and L2_2 then
    L3_3 = string
    L3_3 = L3_3.sub
    L3_3 = L3_3(L1_1, 0, -2)
    if L3_3 == L2_2 then
      L3_3 = string
      L3_3 = L3_3.match
      L3_3 = L3_3(L0_0, "(%a:\\%a%a%a%a%a[%a%d%s\\]+\\microsoft\\" .. L1_1 .. "\\" .. L2_2 .. "%.exe)")
      if L3_3 then
        mp.ReportLowfi(L3_3, 604029456)
      end
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

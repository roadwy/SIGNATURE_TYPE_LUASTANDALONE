local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.wp2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    L0_0 = L0_0(L1_1)
    L1_1 = string
    L1_1 = L1_1.match
    L1_1 = L1_1(L0_0, "winword%.exe\".+\"(.+%.doc)")
    L1_1 = L1_1 .. "\000"
    mp.ReportLowfi(L1_1, 2736322605)
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0

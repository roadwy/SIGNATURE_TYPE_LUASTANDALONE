local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    L0_0 = L0_0(L1_1)
    L1_1 = string
    L1_1 = L1_1.match
    L1_1 = L1_1(L0_0, "winword%.exe\".+\"(.+%.doc[mx]?\"-)")
    L1_1 = L1_1 .. "\000"
    mp.ReportLowfi(L1_1, 44620243)
    if string.find(L1_1, "\\temporary internet files\\content.outlook", 1, true) then
      mp.ReportLowfi(L1_1, 1615606741)
    elseif string.find(L1_1, "\\temporary internet files\\content.ie", 1, true) then
      mp.ReportLowfi(L1_1, 3075520265)
    elseif string.find(L1_1, "\\downloads\\", 1, true) then
      mp.ReportLowfi(L1_1, 2136540056)
    end
    if this_sigattrlog[4].matched then
      mp.ReportLowfi(this_sigattrlog[4].utf8p1, 4024544187)
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0

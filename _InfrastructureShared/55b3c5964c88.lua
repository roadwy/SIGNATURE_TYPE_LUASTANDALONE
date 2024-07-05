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
    L1_1 = L1_1(L0_0, "wscript%.exe\".+\"(.+%.js\"-)")
    if L1_1 ~= nil then
      mp.ReportLowfi(L1_1 .. "\000", 1863120794)
      if this_sigattrlog[2].matched then
        mp.ReportLowfi(this_sigattrlog[2].utf8p1, 3833014443)
      end
      if this_sigattrlog[3].matched then
        mp.ReportLowfi(this_sigattrlog[3].utf8p1, 3594107188)
      end
      if this_sigattrlog[4].matched then
        mp.ReportLowfi(this_sigattrlog[4].utf8p1, 2156510450)
      end
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

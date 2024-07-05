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
    L1_1 = L1_1(L0_0, "cmd%.exe\".+\"(.+%.bat?\"-)")
    if sysio.IsFileExists(L1_1) then
      mp.ReportLowfi(L1_1, 2666131225)
    end
  end
end
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.utf8p1
    L1_1 = sysio
    L1_1 = L1_1.IsFileExists
    L1_1 = L1_1(L0_0)
    if L1_1 then
      L1_1 = mp
      L1_1 = L1_1.ReportLowfi
      L1_1(L0_0, 1017542064)
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0

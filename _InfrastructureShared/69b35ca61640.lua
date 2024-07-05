local L0_0, L1_1, L2_2
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
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, "winword%.exe\".+\"(.+%.doc[mx]?\"-)")
    if L1_1 ~= nil then
      L2_2 = string
      L2_2 = L2_2.len
      L2_2 = L2_2(L1_1)
      if L2_2 > 3 then
        L2_2 = sysio
        L2_2 = L2_2.IsFileExists
        L2_2 = L2_2(L1_1)
        if L2_2 then
          L2_2 = mp
          L2_2 = L2_2.ReportLowfi
          L2_2(L1_1, 3879768063)
          L2_2 = bm
          L2_2 = L2_2.add_related_file
          L2_2(L1_1)
        end
      end
    end
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[2]
      L2_2 = L2_2.utf8p1
      if L2_2 ~= nil and sysio.IsFileExists(L2_2) then
        mp.ReportLowfi(L2_2, 743348104)
        bm.add_related_file(L2_2)
      end
    end
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[3]
      L2_2 = L2_2.utf8p1
      if L2_2 ~= nil and sysio.IsFileExists(L2_2) then
        mp.ReportLowfi(L2_2, 2183682628)
        bm.add_related_file(L2_2)
      end
    end
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L2_2 = L2_2.utf8p1
      if L2_2 ~= nil and sysio.IsFileExists(L2_2) then
        mp.ReportLowfi(L2_2, 854093595)
        bm.add_related_file(L2_2)
      end
    end
    L2_2 = this_sigattrlog
    L2_2 = L2_2[5]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[5]
      L2_2 = L2_2.utf8p1
      if L2_2 ~= nil and sysio.IsFileExists(L2_2) then
        mp.ReportLowfi(L2_2, 1993852203)
        bm.add_related_file(L2_2)
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0

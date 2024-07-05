local L0_0, L1_1, L2_2, L3_3
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p2
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[4]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L2_2 = L2_2.utf8p2
      L1_1 = L1_1(L2_2)
      L0_0 = L1_1
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[5]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = string
        L1_1 = L1_1.lower
        L2_2 = this_sigattrlog
        L2_2 = L2_2[5]
        L2_2 = L2_2.utf8p2
        L1_1 = L1_1(L2_2)
        L0_0 = L1_1
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[6]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = string
          L1_1 = L1_1.lower
          L2_2 = this_sigattrlog
          L2_2 = L2_2[6]
          L2_2 = L2_2.utf8p2
          L1_1 = L1_1(L2_2)
          L0_0 = L1_1
        else
          L1_1 = this_sigattrlog
          L1_1 = L1_1[7]
          L1_1 = L1_1.matched
          if L1_1 then
            L1_1 = string
            L1_1 = L1_1.lower
            L2_2 = this_sigattrlog
            L2_2 = L2_2[7]
            L2_2 = L2_2.utf8p2
            L1_1 = L1_1(L2_2)
            L0_0 = L1_1
          end
        end
      end
    end
  end
end
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p1
if L0_0 and L1_1 then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  L3_3 = string
  L3_3 = L3_3.find
  L3_3 = L3_3(L0_0, L2_2, 1, true)
  if L3_3 then
    L3_3 = string
    L3_3 = L3_3.find
    L3_3 = L3_3(L2_2, ":\\programdata\\", 1, true)
    if L3_3 then
      L3_3 = string
      L3_3 = L3_3.match
      L3_3 = L3_3(L2_2, "(.+\\)([^\\]+)$")
      if L3_3 then
        if string.sub(L3_3, -14) == ":\\programdata\\" then
          mp.ReportLowfi(L1_1, 3958098698)
          return mp.INFECTED
        elseif string.sub(L3_3, -24) == ":\\programdata\\microsoft\\" then
          mp.ReportLowfi(L1_1, 1927453360)
          return mp.INFECTED
        end
      end
    else
      L3_3 = string
      L3_3 = L3_3.find
      L3_3 = L3_3(L2_2, "\\appdata\\", 1, true)
      if L3_3 then
        L3_3 = string
        L3_3 = L3_3.match
        L3_3 = L3_3(L2_2, "(.+\\)([^\\]+)$")
        if L3_3 then
          if string.sub(L3_3, -17) == "\\appdata\\roaming\\" then
            mp.ReportLowfi(L1_1, 98937382)
            return mp.INFECTED
          elseif string.sub(L3_3, -15) == "\\appdata\\local\\" then
            mp.ReportLowfi(L1_1, 2608938885)
            return mp.INFECTED
          elseif string.sub(L3_3, -18) == "\\appdata\\locallow\\" then
            mp.ReportLowfi(L1_1, 3968208659)
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

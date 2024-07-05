local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(this_sigattrlog[3].utf8p2)
  L0_0 = L2_2
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(this_sigattrlog[4].utf8p2)
    L0_0 = L2_2
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[5]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = string
      L2_2 = L2_2.lower
      L2_2 = L2_2(this_sigattrlog[5].utf8p2)
      L0_0 = L2_2
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[6]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = string
        L2_2 = L2_2.lower
        L2_2 = L2_2(this_sigattrlog[6].utf8p2)
        L0_0 = L2_2
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[7]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = string
          L2_2 = L2_2.lower
          L2_2 = L2_2(this_sigattrlog[7].utf8p2)
          L0_0 = L2_2
        else
          L2_2 = this_sigattrlog
          L2_2 = L2_2[8]
          L2_2 = L2_2.matched
          if L2_2 then
            L2_2 = string
            L2_2 = L2_2.lower
            L2_2 = L2_2(this_sigattrlog[8].utf8p2)
            L0_0 = L2_2
          end
        end
      end
    end
  end
end
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(this_sigattrlog[1].utf8p1)
L1_1 = L2_2
if L0_0 and L1_1 then
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L0_0, L1_1, 1, true)
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L1_1, "\\appdata\\", 1, true)
    if L2_2 then
      L2_2 = string
      L2_2 = L2_2.match
      L2_2 = L2_2(L1_1, "(.+\\)([^\\]+)$")
      if L2_2 then
        if string.sub(L2_2, -17) == "\\appdata\\roaming\\" then
          return mp.INFECTED
        elseif string.sub(L2_2, -15) == "\\appdata\\local\\" then
          return mp.INFECTED
        elseif string.sub(L2_2, -18) == "\\appdata\\locallow\\" then
          return mp.INFECTED
        end
      end
    else
      L2_2 = string
      L2_2 = L2_2.find
      L2_2 = L2_2(L1_1, ":\\programdata\\", 1, true)
      if L2_2 then
        L2_2 = string
        L2_2 = L2_2.match
        L2_2 = L2_2(L1_1, "(.+\\)([^\\]+)$")
        if L2_2 and string.sub(L2_2, -14) == ":\\programdata\\" then
          return mp.INFECTED
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

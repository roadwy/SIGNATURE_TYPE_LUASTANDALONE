local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(this_sigattrlog[2].utf8p2)
  L0_0 = L2_2
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(this_sigattrlog[3].utf8p2)
    L0_0 = L2_2
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L1_1 = L2_2.utf8p1
if L0_0 and L1_1 then
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L0_0, string.lower(L1_1), 1, true)
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(string.lower(L1_1), "\\appdata\\roaming\\microsoft", 1, true)
    if L2_2 then
      L2_2 = string
      L2_2 = L2_2.match
      L2_2 = L2_2(string.lower(L1_1), "(.+\\)([^\\]+)$")
      if L2_2 then
        if string.sub(L2_2, -27) == "\\appdata\\roaming\\microsoft\\" then
          mp.ReportLowfi(L1_1, 2978130009)
          return mp.INFECTED
        elseif string.sub(L2_2, -35) == "\\appdata\\roaming\\microsoft\\windows\\" then
          mp.ReportLowfi(L1_1, 680262115)
          return mp.INFECTED
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

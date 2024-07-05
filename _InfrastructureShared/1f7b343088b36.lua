local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L0_0 = L1_1.utf8p2
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L0_0 = L1_1.utf8p2
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[4]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L0_0 = L1_1.utf8p2
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[5]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        L0_0 = L1_1.utf8p2
      end
    end
  end
end
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(string.lower(L0_0), "\\appdata\\roaming\\microsoft", 1, true)
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.match
    L1_1 = L1_1(string.lower(L0_0), "(.+\\)([^\\]+)$")
    if L1_1 then
      if string.sub(L1_1, -27) == "\\appdata\\roaming\\microsoft\\" then
        mp.ReportLowfi(L0_0, 3312250037)
        return mp.INFECTED
      elseif string.sub(L1_1, -35) == "\\appdata\\roaming\\microsoft\\windows\\" then
        mp.ReportLowfi(L0_0, 1550171407)
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

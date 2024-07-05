local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p2
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L1_1, "psscriptpolicytest", 1, true)
  if not L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L1_1, "firefox.ps1", 1, true)
    if not L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L2_2 = L2_2(L1_1, "casascreensaver", 1, true)
    end
  elseif L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(this_sigattrlog[3].utf8p1)
    L1_1 = L2_2
  end
end
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L2_2 = L2_2(L1_1, "([^\\]+)$")
if L2_2 == nil then
  return mp.CLEAN
end
if string.find(L2_2, "\"casascreensaver.scr\"", 1, true) or string.find(L2_2, "\"firefox\"", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

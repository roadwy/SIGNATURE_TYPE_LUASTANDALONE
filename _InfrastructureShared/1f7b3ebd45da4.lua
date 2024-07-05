local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[7]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0, L1_1 = nil, nil
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L0_0 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[3]
      L0_0 = L2_2.utf8p2
    end
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L1_1 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[5]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[5]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[5]
      L1_1 = L2_2.utf8p2
    end
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[6]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[6]
      L2_2 = L2_2.utf8p2
      if L2_2 ~= nil then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[6]
        L1_1 = L2_2.utf8p2
      end
    end
  end
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L0_0 = L2_2
L2_2 = string
L2_2 = L2_2.match
L3_3 = L0_0
L2_2 = L2_2(L3_3, "mountvol%.exe (.:) /s")
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L3_3 = L3_3(L1_1)
L1_1 = L3_3
L3_3 = string
L3_3 = L3_3.match
L3_3 = L3_3(L1_1, "(.:)\\windows\\system32\\drivers\\wd")
if L3_3 == nil then
  return mp.CLEAN
end
if string.lower(MpCommon.ExpandEnvironmentVariables("%SYSTEMDRIVE%")) ~= string.lower(L2_2) and string.lower(MpCommon.ExpandEnvironmentVariables("%SYSTEMDRIVE%")) ~= string.lower(L3_3) then
  return mp.INFECTED
end
return mp.CLEAN

local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 600000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0, L1_1 = nil, nil
L2_2 = this_sigattrlog
L2_2 = L2_2[15]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[15]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[15].utf8p2))
    L0_0 = L2_2
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L0_0, "/upload", 1, true)
    if L2_2 ~= nil then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = string
    L2_2 = L2_2.match
    L2_2 = L2_2(L0_0, "\\([^\\]+)$")
    L1_1 = L2_2
  end
else
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[16]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[16]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[16].utf8p2))
    if string.find(L2_2, L1_1, 1, true) ~= nil then
      return mp.INFECTED
    end
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[17]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[17]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[17].utf8p2))
    if string.find(L2_2, L1_1, 1, true) ~= nil then
      return mp.INFECTED
    end
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[18]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[18]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[18].utf8p2))
    if string.find(L2_2, L1_1, 1, true) ~= nil then
      return mp.INFECTED
    end
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[19]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[19]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[19].utf8p2))
    if string.find(L2_2, L1_1, 1, true) ~= nil then
      return mp.INFECTED
    end
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[20]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[20]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[20].utf8p2))
    if string.find(L2_2, L1_1, 1, true) ~= nil then
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2

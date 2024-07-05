local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L4_4 = L4_4.utf8p2
  if L4_4 then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[1]
    L4_4 = L4_4.utf8p1
    if L4_4 then
      L4_4 = this_sigattrlog
      L4_4 = L4_4[1]
      L2_2 = L4_4.utf8p1
      L4_4 = this_sigattrlog
      L4_4 = L4_4[1]
      L0_0 = L4_4.utf8p2
    end
  end
end
L4_4 = this_sigattrlog
L4_4 = L4_4[4]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[4]
  L4_4 = L4_4.utf8p2
  if L4_4 then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[4]
    L4_4 = L4_4.utf8p1
    if L4_4 then
      L4_4 = this_sigattrlog
      L4_4 = L4_4[4]
      L3_3 = L4_4.utf8p1
      L4_4 = this_sigattrlog
      L4_4 = L4_4[4]
      L1_1 = L4_4.utf8p2
    end
  end
end
L4_4 = isnull
L5_5 = L0_0
L4_4 = L4_4(L5_5)
if L4_4 then
  L4_4 = isnull
  L5_5 = L1_1
  L4_4 = L4_4(L5_5)
  if L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
end
if L0_0 ~= L1_1 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {}
L5_5 = {}
for _FORV_9_, _FORV_10_ in string.gmatch(L1_1, "(%w+):(%w+)") do
  L4_4[_FORV_9_] = _FORV_10_
end
if scrubData(L4_4.usrname) ~= nil and scrubData(L4_4.domain) ~= nil and L4_4.remoteip ~= nil then
  table.insert(L5_5, {
    RemoteClientUser = scrubData(L4_4.usrname),
    RemoteClientDomain = scrubData(L4_4.domain),
    RemoteClientIP = L4_4.remoteip,
    L3_3,
    L2_2
  })
  bm.add_related_string("RemoteClientData_table", safeJsonSerialize(L5_5), bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN

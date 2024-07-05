local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
    bm.add_related_file(L0_0)
    mp.ReportLowfi(L0_0, 1002594803)
  end
end
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
    bm.add_related_file(L0_0)
    mp.ReportLowfi(L0_0, 1696514977)
  end
end
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
    bm.add_related_file(L0_0)
    mp.ReportLowfi(L0_0, 2037309813)
  end
end
L0_0 = this_sigattrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[4]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
    bm.add_related_file(L0_0)
    mp.ReportLowfi(L0_0, 3163967254)
  end
end
L0_0 = this_sigattrlog
L0_0 = L0_0[5]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[5]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
    bm.add_related_file(L0_0)
    mp.ReportLowfi(L0_0, 4100536160)
  end
end
L0_0 = this_sigattrlog
L0_0 = L0_0[6]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[6]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
    bm.add_related_file(L0_0)
    mp.ReportLowfi(L0_0, 1676364795)
  end
end
L0_0 = this_sigattrlog
L0_0 = L0_0[7]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[7]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
    bm.add_related_file(L0_0)
    mp.ReportLowfi(L0_0, 372502474)
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0

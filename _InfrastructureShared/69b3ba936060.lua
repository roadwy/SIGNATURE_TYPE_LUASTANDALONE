local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil and string.len(L0_0) > 3 and sysio.IsFileExists(L0_0) then
    mp.ReportLowfi(L0_0, 1578871239)
  end
end
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil and string.len(L0_0) > 3 and sysio.IsFileExists(L0_0) then
    mp.ReportLowfi(L0_0, 1851672550)
  end
end
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil and string.len(L0_0) > 3 and sysio.IsFileExists(L0_0) then
    mp.ReportLowfi(L0_0, 2449707962)
  end
end
L0_0 = this_sigattrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[4]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil and string.len(L0_0) > 3 and sysio.IsFileExists(L0_0) then
    mp.ReportLowfi(L0_0, 195050746)
  end
end
L0_0 = this_sigattrlog
L0_0 = L0_0[5]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[5]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil and string.len(L0_0) > 3 and sysio.IsFileExists(L0_0) then
    mp.ReportLowfi(L0_0, 723996031)
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0

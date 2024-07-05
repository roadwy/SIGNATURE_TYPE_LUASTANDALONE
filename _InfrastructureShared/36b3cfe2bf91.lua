local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L0_0 = L0_0(this_sigattrlog[1].utf8p1)
    if string.find(L0_0, ".htaccess", 1, true) then
      return mp.CLEAN
    end
    if sysio.IsFileExists(L0_0) then
      bm.add_related_file(L0_0)
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0

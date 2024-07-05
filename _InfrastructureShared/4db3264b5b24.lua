local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.utf8p2
    L0_0 = L0_0:gsub("`", "", 100)
    L0_0 = string.lower(L0_0)
    if string.find(L0_0, "new-object", 1, true) or string.find(L0_0, "executioncontext", 1, true) or string.find(L0_0, "webclient", 1, true) or string.find(L0_0, "newscriptblock", 1, true) then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

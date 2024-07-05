local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[9]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[9]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[9]
    L0_0 = L0_0.utf8p2
    L0_0 = L0_0.match
    L0_0 = L0_0(L0_0, "filepath:(.+)")
    if L0_0 == nil or L0_0 == "" then
      return mp.CLEAN
    end
    bm.add_threat_file(L0_0)
    AddResearchData("BM", true)
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(this_sigattrlog[1].utf8p1)
  if L0_0 ~= nil and string.find(L0_0, "\\msbuild.exe", 1, true) then
    bm.add_action("EmsScan", 5000)
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

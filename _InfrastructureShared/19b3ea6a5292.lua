local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.wp2
  if L0_0 == nil then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(this_sigattrlog[1].utf8p2)
if string.match(L0_0, "advfirewall firewall add rule name=.+program=.+\\explorer.exe") then
  return mp.INFECTED
end
return mp.CLEAN

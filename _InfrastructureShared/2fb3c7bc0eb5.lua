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
    if string.match(L0_0, "%%appdata%%\\[^\\]+\\") == nil then
      return mp.INFECTED
    elseif string.match(L0_0, "%%appdata%%\\[^\\]+\\$") ~= nil then
      return mp.INFECTED
    else
      return mp.CLEAN
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

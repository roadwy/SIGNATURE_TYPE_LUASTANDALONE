local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L0_0 = L0_0(this_sigattrlog[1].utf8p2)
    if string.find(L0_0, "hidden", 1, true) and string.find(L0_0, "iex", 1, true) and string.find(L0_0, "text.encoding", 1, true) then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

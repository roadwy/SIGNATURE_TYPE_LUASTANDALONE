local L0_0
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(this_sigattrlog[2].p1)
  if string.find(L0_0, "data source=%w%w[%w%.%-]+") and string.find(L0_0, "user id=%p?%w...+;") and string.find(L0_0, "password=%p?%w%w%w.+") then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0

local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
else
  return mp.CLEAN
end
if string.match(L0_0, "hidden.+bypass.+iex.+text%.encoding.+frombase64string.+gp.*hkcu:.+") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

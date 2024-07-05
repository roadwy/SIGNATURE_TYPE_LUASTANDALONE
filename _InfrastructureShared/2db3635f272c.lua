local L0_0
L0_0 = "(.+\\)"
if string.match(string.lower(this_sigattrlog[1].utf8p1), L0_0) ~= nil and string.match(string.lower(this_sigattrlog[1].utf8p1), L0_0) == string.match(string.lower(this_sigattrlog[2].utf8p1), L0_0) then
  return mp.INFECTED
end
return mp.CLEAN

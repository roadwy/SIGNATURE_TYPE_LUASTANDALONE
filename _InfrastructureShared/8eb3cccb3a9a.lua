local L0_0
if this_sigattrlog[1].matched then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
elseif this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
elseif this_sigattrlog[3].matched then
  return mp.INFECTED
end
if L0_0 ~= nil then
  L0_0 = string.gsub(L0_0, "\"", "")
  if string.find(L0_0, "/c cd /d", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN

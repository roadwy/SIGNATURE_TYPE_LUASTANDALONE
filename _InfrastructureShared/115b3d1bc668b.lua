local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
end
if this_sigattrlog[2].matched and this_sigattrlog[2].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
end
if L0_0 ~= nil then
  if string.find(L0_0, "/nagios/plugins/", 1, true) then
    return mp.CLEAN
  end
  if string.find(L0_0, "--lm", 1, true) and string.find(L0_0, "--nt", 1, true) then
    return mp.INFECTED
  elseif string.find(L0_0, "-c ", 1, true) and string.find(L0_0, "-t ", 1, true) then
    return mp.INFECTED
  elseif string.find(L0_0, "-c ", 1, true) and string.find(L0_0, "-l ", 1, true) then
    return mp.INFECTED
  elseif string.find(L0_0, "-u ", 1, true) and string.find(L0_0, "-t ", 1, true) then
    return mp.INFECTED
  elseif string.find(L0_0, "-u ", 1, true) and string.find(L0_0, "-l ", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN

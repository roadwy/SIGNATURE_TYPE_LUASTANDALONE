local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p2
end
if L0_0 ~= nil then
  L0_0 = string.lower(L0_0)
  if (string.find(L0_0, "-ping ", 1, true) ~= nil or string.find(L0_0, "/ping ", 1, true) ~= nil) and string.find(L0_0, " http", 1, true) ~= nil and string.find(L0_0, "kerberos ", 1, true) == nil then
    return mp.INFECTED
  end
  if (string.find(L0_0, "-urlcache ", 1, true) ~= nil or string.find(L0_0, "/urlcache ", 1, true) ~= nil) and (string.find(L0_0, " ftp:", 1, true) ~= nil or string.find(L0_0, " http", 1, true) ~= nil) then
    return mp.INFECTED
  end
end
return mp.CLEAN

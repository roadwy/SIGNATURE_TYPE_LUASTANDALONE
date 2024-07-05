if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil and string.match(this_sigattrlog[1].utf8p1, "\\Program Files\\Common Files\\Microsoft Shared\\Web Server Extensions\\") ~= nil then
  return mp.CLEAN
end
return mp.INFECTED

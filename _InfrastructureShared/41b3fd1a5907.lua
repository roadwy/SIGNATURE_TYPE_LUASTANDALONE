if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p1:lower():match("\\([^\\]+)$") ~= nil and this_sigattrlog[3].utf8p2:lower():match("\\([^\\]+)%.exe$") ~= nil and this_sigattrlog[3].utf8p1:lower():match("\\([^\\]+)$") == this_sigattrlog[3].utf8p2:lower():match("\\([^\\]+)%.exe$") then
  return mp.INFECTED
end
return mp.CLEAN

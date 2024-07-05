if this_sigattrlog[5].matched and this_sigattrlog[5].utf8p1 ~= nil and this_sigattrlog[5].utf8p1 ~= "" and string.match(this_sigattrlog[5].utf8p1, "/%.[^/]+$") then
  bm.trigger_sig("HiddenProcessStart", this_sigattrlog[5].utf8p1)
  return mp.INFECTED
end
return mp.CLEAN

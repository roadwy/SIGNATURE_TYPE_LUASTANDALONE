local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
end
if L0_0 ~= nil then
  if ({
    tasks = true,
    drivers = true,
    driverstore = true,
    driverstate = true,
    config = true
  })[L0_0:match("sys[tw][eo][mw][36][24]\\([^\\]+)")] then
    return mp.CLEAN
  end
end
return mp.INFECTED

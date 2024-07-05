local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p1
  if string.sub(L0_0, -11) == "desktop.ini" then
    return mp.CLEAN
  end
end
return mp.INFECTED

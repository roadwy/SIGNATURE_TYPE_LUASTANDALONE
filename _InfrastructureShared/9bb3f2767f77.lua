local L0_0, L3_1
if string.lower(bm.get_imagepath()):find("explorer.exe") then
  L0_0 = string.match(this_sigattrlog[1].utf8p2, ".exe")
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog[1].utf8p2
    L3_1 = this_sigattrlog[2].utf8p2
    if L0_0 == L3_1 and L0_0 == this_sigattrlog[3].utf8p1 then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN

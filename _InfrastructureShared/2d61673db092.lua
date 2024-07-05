if peattributes.ismsil == true and mp.getfilesize() > 589824 and mp.getfilesize() < 720896 and mp.get_mpattribute("NID:Trojan:MSIL/TeslaCryptIH") then
  return mp.INFECTED
end
return mp.LOWFI

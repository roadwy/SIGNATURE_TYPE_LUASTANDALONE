if peattributes.no_security == true and mp.getfilesize() <= 3997696 and mp.getfilesize() >= 3538944 and mp.get_mpattribute("NID:GolangSnake") then
  return mp.INFECTED
end
return mp.CLEAN

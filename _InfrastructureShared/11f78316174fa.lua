if mp.getfilesize() < 3014656 then
  return mp.INFECTED
end
return mp.CLEAN

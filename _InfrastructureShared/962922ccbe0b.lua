if mp.get_mpattribute("SCRIPT:PHPHeaderTag.A") and mp.getfilesize() < 1024 then
  return mp.INFECTED
end
return mp.CLEAN

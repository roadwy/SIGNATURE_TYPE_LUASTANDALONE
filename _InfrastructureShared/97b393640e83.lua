if string.match(mp.utf16to8(this_sigattrlog[1].wp1), "\\%a+.exe") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

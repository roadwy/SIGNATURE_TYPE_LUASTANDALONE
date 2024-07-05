if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p1 ~= nil and this_sigattrlog[4].matched and this_sigattrlog[4].utf8p1 ~= nil then
  if string.lower(this_sigattrlog[3].utf8p1):match("([^\\]+)$") ~= string.lower(this_sigattrlog[4].utf8p1) then
    return mp.CLEAN
  end
  if ({
    ["winword.exe"] = true,
    ["excel.exe"] = true,
    ["outlook.exe"] = true,
    ["olk.exe"] = true,
    ["splwow64.exe"] = true,
    ["deletelogfiles.exe"] = true,
    ["dw20.exe"] = true,
    ["microsoft.uev.synccontroller.exe"] = true
  })[string.lower(this_sigattrlog[4].utf8p1)] then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

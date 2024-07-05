if peattributes.isdll == true and mp.getfilesize() <= 150000 and mp.get_mpattribute("Sigattr:Win32/ShellcodeRunner.AL!MTB") then
  return mp.INFECTED
end
return mp.CLEAN

if mp.getfilesize() < 8388608 or mp.getfilesize() > 17825792 then
  return mp.CLEAN
end
if mp.get_mpattribute("HSTR:PYINSTALLER") and mp.get_mpattribute("HSTR:Linux/NativeAPIDirectoryEnumuerate.A") then
  return mp.INFECTED
end
return mp.CLEAN

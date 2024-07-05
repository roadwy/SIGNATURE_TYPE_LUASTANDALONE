if peattributes.isdll and mp.get_mpattribute("MpCPlApplet") and mp.get_mpattribute("PEPCODE:VirTool:Win32/VMProtect") then
  return mp.INFECTED
end
return mp.CLEAN

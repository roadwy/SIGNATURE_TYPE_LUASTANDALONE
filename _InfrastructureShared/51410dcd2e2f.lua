if mp.get_mpattribute("MpCPlApplet") and mp.get_mpattribute("HSTR:VirTool:Win32/AscUrlExe") then
  return mp.INFECTED
end
return mp.CLEAN

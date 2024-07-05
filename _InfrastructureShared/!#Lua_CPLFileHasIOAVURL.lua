if mp.get_mpattribute("RPF:PEHasIOAVURL") and mp.get_mpattribute("MpCPlApplet") and not mp.get_mpattribute("//GCPLFileHasIOAVURL") then
  mp.set_mpattribute("Lua:CPLFileHasIOAVURL")
  mp.set_mpattribute("//GCPLFileHasIOAVURL")
end
return mp.CLEAN

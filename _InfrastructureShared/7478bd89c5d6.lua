if mp.get_mpattribute("PACKED_WITH:(VFS:install.exe)") then
  return mp.INFECTED
end
return mp.CLEAN

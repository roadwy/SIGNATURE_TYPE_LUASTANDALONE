if mp.get_mpattribute("SIGATTR:FindAvastAV") and mp.get_mpattribute("SIGATTR:ExCheckInstalledAV") and mp.get_mpattribute("SIGATTR:DirectoryWalkerVfs") and mp.get_mpattribute("SIGATTR:FindBaiuduAV") then
  return mp.INFECTED
end
return mp.CLEAN

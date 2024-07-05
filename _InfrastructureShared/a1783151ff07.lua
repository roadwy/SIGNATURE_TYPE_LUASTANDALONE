if mp.get_mpattribute("SIGATTR:FindBaiuduAV") and mp.get_mpattribute("SIGATTR:FindAvastAV") then
  return mp.INFECTED
end
return mp.LOWFI

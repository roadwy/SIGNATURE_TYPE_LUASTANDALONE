if peattributes.amd64_image then
  mp.set_mpattribute("SIGATTR:MPK64")
else
  mp.set_mpattribute("SIGATTR:MPK32")
end
return mp.CLEAN

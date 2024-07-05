if pcall(bm.get_connection_string) and pcall(bm.get_connection_string):match("DestPort=4242;") then
  return mp.CLEAN
end
return mp.INFECTED

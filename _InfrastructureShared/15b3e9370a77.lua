if pcall(bm.get_connection_string):match("DestIp=5.149.248.") or pcall(bm.get_connection_string):match("DestIp=79.142.66.") or pcall(bm.get_connection_string):match("DestIp=217.23.15.") or pcall(bm.get_connection_string):match("DestIp=65.98.83.") or pcall(bm.get_connection_string):match("DestIp=69.57.173.") or pcall(bm.get_connection_string):match("DestIp=74.82.216.") or pcall(bm.get_connection_string):match("DestIp=88.198.247.") or pcall(bm.get_connection_string):match("DestIp=98.142.243.") then
  return mp.INFECTED
end
return mp.CLEAN

if bm.get_connection_string():find("DestIp=185.22.172.157;", 1, true) or bm.get_connection_string():find("DestIp=91.121.222.184;", 1, true) or bm.get_connection_string():find("DestIp=185.22.172.69;", 1, true) or bm.get_connection_string():find("DestIp=185.18.53.247;", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

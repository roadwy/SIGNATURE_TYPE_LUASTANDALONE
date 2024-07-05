if reportSessionInformation().Session.ClientProtocolType == 2 then
  return mp.INFECTED
end
return mp.CLEAN

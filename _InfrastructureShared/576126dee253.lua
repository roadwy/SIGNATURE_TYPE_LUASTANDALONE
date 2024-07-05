if pehdr.TimeDateStamp ~= 0 and MpCommon.GetCurrentTimeT() > pehdr.TimeDateStamp and MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 86400 then
  return mp.INFECTED
end
return mp.CLEAN

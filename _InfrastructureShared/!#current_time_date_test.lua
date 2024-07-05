if peattributes.isexe and pehdr.TimeDateStamp ~= 0 and pehdr.TimeDateStamp ~= -1 and pehdr.TimeDateStamp > MpCommon.GetCurrentTimeT() then
  mp.set_mpattribute("Lua:Future_pehdr_timestamp")
end
return mp.CLEAN

if peattributes.x86_image == false then
  return mp.CLEAN
end
if pehdr.TimeDateStamp ~= 0 and MpCommon.GetCurrentTimeT() > pehdr.TimeDateStamp then
  if MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 345600 then
    mp.set_mpattribute("Lua:PETimeStampLastFiveDays")
  end
  if MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 777600 then
    mp.set_mpattribute("Lua:PETimeStampLastTenDays")
  end
  if MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 2592000 then
    mp.set_mpattribute("Lua:PETimeStampLastThirtyDays")
  end
  if MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 31536000 then
    mp.set_mpattribute("Lua:PETimeStampLastYear")
  end
end
if pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_EXPORT].RVA ~= 0 and pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_EXPORT].Size ~= 0 then
  mp.readprotection(false)
  if mp.readu_u32(pe.mmap_rva(pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_EXPORT].RVA + 20, 4), 1) < 5 then
    mp.set_mpattribute("Lua:ETWithLessThanFiveExports")
  end
  if MpCommon.GetCurrentTimeT() > pehdr.TimeDateStamp then
    if MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 345600 then
      mp.set_mpattribute("Lua:ExportTimeStampLastFiveDays")
    end
    if MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 777600 then
      mp.set_mpattribute("Lua:ExportTimeStampLastTenDays")
    end
    if MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 2592000 then
      mp.set_mpattribute("Lua:ExportTimeStampLastThirtyDays")
    end
    if MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 31536000 then
      mp.set_mpattribute("Lua:ExportTimeStampLastYear")
    end
  end
elseif peattributes.isdll then
  mp.set_mpattribute("Lua:DllWithNoExportTable")
end
return mp.CLEAN

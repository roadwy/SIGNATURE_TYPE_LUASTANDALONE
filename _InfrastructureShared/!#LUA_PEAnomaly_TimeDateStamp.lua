local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L1_1 = pe
L1_1 = L1_1.IMAGE_DIRECTORY_ENTRY_DEBUG
L0_0 = L0_0[L1_1]
L0_0 = L0_0.RVA
L1_1 = pehdr
L1_1 = L1_1.DataDirectory
L1_1 = L1_1[pe.IMAGE_DIRECTORY_ENTRY_DEBUG]
L1_1 = L1_1.Size
if L0_0 ~= 0 and L1_1 ~= 0 then
  mp.readprotection(false)
  while L1_1 > 0 do
    if mp.readu_u32(pe.mmap_rva(L0_0 + 0 + 12, 4), 1) == 16 then
      return mp.CLEAN
    end
  end
  mp.readprotection(true)
  if pehdr.TimeDateStamp ~= mp.readu_u32(pe.mmap_rva(L0_0 + 4, 4), 1) then
    mp.set_mpattribute("LUA:PEAnomaly_DifferentPEandDebugDirTimeStamp")
  end
  if mp.readu_u32(pe.mmap_rva(L0_0 + 4, 4), 1) ~= 0 then
    if MpCommon.GetCurrentTimeT() - mp.readu_u32(pe.mmap_rva(L0_0 + 4, 4), 1) <= 2592000 then
      mp.set_mpattribute("LUA:PEAnomaly_DebugTimeStampLastOneMonth")
    end
    if MpCommon.GetCurrentTimeT() - mp.readu_u32(pe.mmap_rva(L0_0 + 4, 4), 1) > 2592000 and MpCommon.GetCurrentTimeT() - mp.readu_u32(pe.mmap_rva(L0_0 + 4, 4), 1) <= 15638400 then
      mp.set_mpattribute("LUA:PEAnomaly_DebugTimeStampLastSixMonth")
    end
    if MpCommon.GetCurrentTimeT() - mp.readu_u32(pe.mmap_rva(L0_0 + 4, 4), 1) > 15638400 and MpCommon.GetCurrentTimeT() - mp.readu_u32(pe.mmap_rva(L0_0 + 4, 4), 1) <= 31536000 then
      mp.set_mpattribute("LUA:PEAnomaly_DebugTimeStampLastOneYear")
    end
    if MpCommon.GetCurrentTimeT() - mp.readu_u32(pe.mmap_rva(L0_0 + 4, 4), 1) > 31536000 and MpCommon.GetCurrentTimeT() - mp.readu_u32(pe.mmap_rva(L0_0 + 4, 4), 1) <= 94608000 then
      mp.set_mpattribute("LUA:PEAnomaly_DebugTimeStampLastThreeYear")
    end
    if MpCommon.GetCurrentTimeT() - mp.readu_u32(pe.mmap_rva(L0_0 + 4, 4), 1) > 94608000 and MpCommon.GetCurrentTimeT() - mp.readu_u32(pe.mmap_rva(L0_0 + 4, 4), 1) <= 157766400 then
      mp.set_mpattribute("LUA:PEAnomaly_DebugTimeStampLastFiveYear")
    end
    if MpCommon.GetCurrentTimeT() - mp.readu_u32(pe.mmap_rva(L0_0 + 4, 4), 1) > 157766400 and MpCommon.GetCurrentTimeT() - mp.readu_u32(pe.mmap_rva(L0_0 + 4, 4), 1) <= 315532800 then
      mp.set_mpattribute("LUA:PEAnomaly_DebugTimeStampLastTenYear")
    end
    if MpCommon.GetCurrentTimeT() - mp.readu_u32(pe.mmap_rva(L0_0 + 4, 4), 1) > 315532800 then
      mp.set_mpattribute("LUA:PEAnomaly_DebugTimeStampLastOlderThanTenYear")
    end
  else
    mp.set_mpattribute("LUA:PEAnomaly_NullDebugTimeStamp")
  end
end
if pehdr.TimeDateStamp ~= 0 then
  if MpCommon.GetCurrentTimeT() > pehdr.TimeDateStamp then
    if MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 2592000 then
      mp.set_mpattribute("LUA:PEAnomaly_TimeStampLastOneMonth")
    end
    if MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp > 2592000 and MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 15638400 then
      mp.set_mpattribute("LUA:PEAnomaly_TimeStampLastSixMonth")
    end
    if MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp > 15638400 and MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 31536000 then
      mp.set_mpattribute("LUA:PEAnomaly_TimeStampLastOneYear")
    end
    if MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp > 31536000 and MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 94608000 then
      mp.set_mpattribute("LUA:PEAnomaly_TimeStampLastThreeYear")
    end
    if MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp > 94608000 and MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 157766400 then
      mp.set_mpattribute("LUA:PEAnomaly_TimeStampLastFiveYear")
    end
    if MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp > 157766400 and MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 315532800 then
      mp.set_mpattribute("LUA:PEAnomaly_TimeStampLastTenYear")
    end
    if MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp > 315532800 then
      mp.set_mpattribute("LUA:PEAnomaly_TimeStampLastOlderThanTenYear")
    end
  else
    mp.set_mpattribute("LUA:PEAnomaly_TimeStampHigherThanCurrentDateOrInvalid")
  end
else
  mp.set_mpattribute("LUA:PEAnomaly_NullTimeDateStamp")
end
return mp.CLEAN

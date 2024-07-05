if IsSenseRelatedProc() == true then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1486", "folderguard_folder_audit")
return mp.INFECTED

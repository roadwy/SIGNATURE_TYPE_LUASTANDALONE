if IsProcessExcludedFromRansomwareAnalysis() == true then
  return mp.CLEAN
end
addRelatedProcess()
reportRelatedBmHits()
TrackPidAndTechniqueBM("BM", "T1486", "Impact_FileEncryption")
RemediateProcessTreeForLinux()
return mp.INFECTED

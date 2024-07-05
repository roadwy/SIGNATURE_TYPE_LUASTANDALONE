if IsTechniqueObservedGlobal("ReverseShell", true) then
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN

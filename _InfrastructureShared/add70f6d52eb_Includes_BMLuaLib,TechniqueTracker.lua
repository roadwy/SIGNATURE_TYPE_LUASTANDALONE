if IsProcNameInParentProcessTree("cmdhstr", {
  "onenote.exe"
}) then
  return mp.INFECTED
end
return mp.CLEAN

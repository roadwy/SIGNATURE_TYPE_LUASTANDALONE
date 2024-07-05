local L0_0
L0_0 = {
  "anydesk",
  "SoftyPlanning",
  "OverSolutionHelpDesk.exe",
  "qwepesk.exe",
  "soporte remoto",
  "\\synaptics.exe",
  "implemo_dostep_zdalny.exe",
  "cgm_remote_support.exe"
}
if contains(bm.get_imagepath(), L0_0) then
  return mp.CLEAN
end
return mp.INFECTED

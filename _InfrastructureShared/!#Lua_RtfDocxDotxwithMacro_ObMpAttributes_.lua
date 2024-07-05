local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.find(L0_0, ".docx->word/vbaproject.bin", 1, true) or string.find(L0_0, ".rtf->word/vbaproject.bin", 1, true) or string.find(L0_0, ".dotx->word/vbaproject.bin", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

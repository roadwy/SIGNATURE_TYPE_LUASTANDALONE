local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 and (string.find(L0_0, "\\skype.mdn.mp.service.exe", 1, true) or string.find(L0_0, "\\microsoft.skype.", 1, true)) then
  return mp.CLEAN
end
bm.trigger_sig("SpringShellExpl", "EncodedPost")
return mp.CLEAN

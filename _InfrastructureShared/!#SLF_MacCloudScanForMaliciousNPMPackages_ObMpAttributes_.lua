local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
if L0_0 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 == L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
    if L1_1 ~= nil and string.find(L1_1, "/node_modules/", 1, true) ~= nil and (string.find(L1_1, "ionic-icon", 1, true) ~= nil or string.find(L1_1, "ionicio", 1, true) ~= nil or string.find(L1_1, "icon-package", 1, true) ~= nil or string.find(L1_1, "ajax-libs", 1, true) ~= nil or string.find(L1_1, "umbrellaks", 1, true) ~= nil or string.find(L1_1, "ajax-library", 1, true) ~= nil or string.find(L1_1, "iconion-package", 1, true) ~= nil or string.find(L1_1, "package-sidr", 1, true) ~= nil or string.find(L1_1, "kbrstore", 1, true) ~= nil or string.find(L1_1, "icons-package", 1, true) ~= nil or string.find(L1_1, "subek", 1, true) ~= nil or string.find(L1_1, "package-show", 1, true) ~= nil or string.find(L1_1, "package-icon", 1, true) ~= nil or string.find(L1_1, "icons-packages", 1, true) ~= nil or string.find(L1_1, "ionicon-package", 1, true) ~= nil or string.find(L1_1, "icons-pack", 1, true) ~= nil or string.find(L1_1, "pack-icons", 1, true) ~= nil or string.find(L1_1, "ionicons-pack", 1, true) ~= nil or string.find(L1_1, "package-ionicons", 1, true) ~= nil or string.find(L1_1, "footericon", 1, true) ~= nil or string.find(L1_1, "swiper-bundle", 1, true) ~= nil or string.find(L1_1, "atezzz", 1, true) ~= nil or string.find(L1_1, "small-sm", 1, true) ~= nil or string.find(L1_1, "pern-valids", 1, true) ~= nil or string.find(L1_1, "lifeculer", 1, true) ~= nil or string.find(L1_1, "proc-title", 1, true) ~= nil or string.find(L1_1, "libz.jquery", 1, true) ~= nil) then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1

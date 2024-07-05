if mp.get_mpattribute("RktProtect.pdb") and peattributes.isdriver then
  return mp.INFECTED
end
return mp.CLEAN

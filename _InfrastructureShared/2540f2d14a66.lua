if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "new folder.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "documents.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "music.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "pictures.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "videos.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "recycler.exe") then
  mp.set_mpattribute("Lowfi:SIGATTR:Worm:Win32/PossibleSillyShareCopy.gen")
end
return mp.CLEAN

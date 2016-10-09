# -------------------------------------------------
# Project created by QtCreator 2013-08-19T11:08:15
# -------------------------------------------------
QMAKE_CXXFLAGS += -msse \
    -msse2 \
    -std=c++11
QT += opengl
TARGET = shuriken
TEMPLATE = app
SOURCES += src/JuceLibraryCode/modules/juce_audio_basics/juce_audio_basics.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/buffers/juce_FloatVectorOperations.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/buffers/juce_AudioDataConverters.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/effects/juce_LagrangeInterpolator.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/effects/juce_IIRFilter.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/effects/juce_FFT.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/effects/juce_CatmullRomInterpolator.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/midi/juce_MidiRPN.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/midi/juce_MidiMessageSequence.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/midi/juce_MidiMessage.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/midi/juce_MidiKeyboardState.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/midi/juce_MidiFile.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/midi/juce_MidiBuffer.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPEInstrument.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPEMessages.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPENote.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPESynthesiser.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPESynthesiserBase.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPESynthesiserVoice.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPEValue.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPEZone.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPEZoneLayout.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/sources/juce_ToneGeneratorAudioSource.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/sources/juce_ReverbAudioSource.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/sources/juce_ResamplingAudioSource.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/sources/juce_MixerAudioSource.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/sources/juce_IIRFilterAudioSource.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/sources/juce_ChannelRemappingAudioSource.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/sources/juce_BufferingAudioSource.cpp \
    src/JuceLibraryCode/modules/juce_audio_basics/synthesisers/juce_Synthesiser.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/juce_audio_devices.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/audio_cd/juce_AudioCDReader.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/audio_io/juce_AudioIODeviceType.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/audio_io/juce_AudioIODevice.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/audio_io/juce_AudioDeviceManager.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/midi_io/juce_MidiOutput.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/midi_io/juce_MidiMessageCollector.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_win32_WASAPI.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_win32_Midi.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_win32_DirectSound.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_win32_AudioCDReader.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_win32_AudioCDBurner.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_win32_ASIO.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_mac_CoreMidi.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_mac_CoreAudio.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_linux_Midi.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_linux_JackAudio.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_linux_AudioCDReader.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_linux_ALSA.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_ios_Audio.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_android_OpenSL.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_android_Midi.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_android_Audio.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/sources/juce_AudioTransportSource.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/sources/juce_AudioSourcePlayer.cpp \
    src/JuceLibraryCode/modules/juce_core/juce_core.cpp \
    src/JuceLibraryCode/modules/juce_core/containers/juce_Variant.cpp \
    src/JuceLibraryCode/modules/juce_core/containers/juce_PropertySet.cpp \
    src/JuceLibraryCode/modules/juce_core/containers/juce_NamedValueSet.cpp \
    src/JuceLibraryCode/modules/juce_core/containers/juce_DynamicObject.cpp \
    src/JuceLibraryCode/modules/juce_core/containers/juce_AbstractFifo.cpp \
    src/JuceLibraryCode/modules/juce_core/files/juce_TemporaryFile.cpp \
    src/JuceLibraryCode/modules/juce_core/files/juce_FileSearchPath.cpp \
    src/JuceLibraryCode/modules/juce_core/files/juce_FileOutputStream.cpp \
    src/JuceLibraryCode/modules/juce_core/files/juce_FileInputStream.cpp \
    src/JuceLibraryCode/modules/juce_core/files/juce_File.cpp \
    src/JuceLibraryCode/modules/juce_core/files/juce_DirectoryIterator.cpp \
    src/JuceLibraryCode/modules/juce_core/logging/juce_Logger.cpp \
    src/JuceLibraryCode/modules/juce_core/logging/juce_FileLogger.cpp \
    src/JuceLibraryCode/modules/juce_core/maths/juce_Random.cpp \
    src/JuceLibraryCode/modules/juce_core/maths/juce_Expression.cpp \
    src/JuceLibraryCode/modules/juce_core/maths/juce_BigInteger.cpp \
    src/JuceLibraryCode/modules/juce_core/memory/juce_MemoryBlock.cpp \
    src/JuceLibraryCode/modules/juce_core/misc/juce_Uuid.cpp \
    src/JuceLibraryCode/modules/juce_core/misc/juce_Result.cpp \
    src/JuceLibraryCode/modules/juce_core/misc/juce_RuntimePermissions.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_win32_Threads.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_win32_SystemStats.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_win32_Registry.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_win32_Network.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_win32_Files.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_posix_NamedPipe.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_linux_Threads.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_linux_SystemStats.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_linux_Network.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_linux_Files.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_curl_Network.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_android_Threads.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_android_SystemStats.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_android_RuntimePermissions.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_android_Network.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_android_Misc.cpp \
    src/JuceLibraryCode/modules/juce_core/native/juce_android_Files.cpp \
    src/JuceLibraryCode/modules/juce_core/network/juce_URL.cpp \
    src/JuceLibraryCode/modules/juce_core/network/juce_Socket.cpp \
    src/JuceLibraryCode/modules/juce_core/network/juce_NamedPipe.cpp \
    src/JuceLibraryCode/modules/juce_core/network/juce_MACAddress.cpp \
    src/JuceLibraryCode/modules/juce_core/network/juce_IPAddress.cpp \
    src/JuceLibraryCode/modules/juce_core/streams/juce_SubregionStream.cpp \
    src/JuceLibraryCode/modules/juce_core/streams/juce_OutputStream.cpp \
    src/JuceLibraryCode/modules/juce_core/streams/juce_MemoryOutputStream.cpp \
    src/JuceLibraryCode/modules/juce_core/streams/juce_MemoryInputStream.cpp \
    src/JuceLibraryCode/modules/juce_core/streams/juce_InputStream.cpp \
    src/JuceLibraryCode/modules/juce_core/streams/juce_FileInputSource.cpp \
    src/JuceLibraryCode/modules/juce_core/streams/juce_BufferedInputStream.cpp \
    src/JuceLibraryCode/modules/juce_core/system/juce_SystemStats.cpp \
    src/JuceLibraryCode/modules/juce_core/text/juce_Base64.cpp \
    src/JuceLibraryCode/modules/juce_core/text/juce_TextDiff.cpp \
    src/JuceLibraryCode/modules/juce_core/text/juce_StringPool.cpp \
    src/JuceLibraryCode/modules/juce_core/text/juce_StringPairArray.cpp \
    src/JuceLibraryCode/modules/juce_core/text/juce_StringArray.cpp \
    src/JuceLibraryCode/modules/juce_core/text/juce_String.cpp \
    src/JuceLibraryCode/modules/juce_core/text/juce_LocalisedStrings.cpp \
    src/JuceLibraryCode/modules/juce_core/text/juce_Identifier.cpp \
    src/JuceLibraryCode/modules/juce_core/text/juce_CharacterFunctions.cpp \
    src/JuceLibraryCode/modules/juce_core/threads/juce_TimeSliceThread.cpp \
    src/JuceLibraryCode/modules/juce_core/threads/juce_ThreadPool.cpp \
    src/JuceLibraryCode/modules/juce_core/threads/juce_Thread.cpp \
    src/JuceLibraryCode/modules/juce_core/threads/juce_ReadWriteLock.cpp \
    src/JuceLibraryCode/modules/juce_core/threads/juce_HighResolutionTimer.cpp \
    src/JuceLibraryCode/modules/juce_core/threads/juce_ChildProcess.cpp \
    src/JuceLibraryCode/modules/juce_core/time/juce_Time.cpp \
    src/JuceLibraryCode/modules/juce_core/time/juce_RelativeTime.cpp \
    src/JuceLibraryCode/modules/juce_core/time/juce_PerformanceCounter.cpp \
    src/JuceLibraryCode/modules/juce_core/unit_tests/juce_UnitTest.cpp \
    src/JuceLibraryCode/modules/juce_core/xml/juce_XmlElement.cpp \
    src/JuceLibraryCode/modules/juce_core/xml/juce_XmlDocument.cpp \
    src/JuceLibraryCode/modules/juce_core/zip/juce_ZipFile.cpp \
    src/JuceLibraryCode/modules/juce_core/zip/juce_GZIPDecompressorInputStream.cpp \
    src/JuceLibraryCode/modules/juce_core/zip/juce_GZIPCompressorOutputStream.cpp \
    src/JuceLibraryCode/modules/juce_core/javascript/juce_JSON.cpp \
    src/JuceLibraryCode/modules/juce_core/javascript/juce_Javascript.cpp \
    src/JuceLibraryCode/modules/juce_data_structures/juce_data_structures.cpp \
    src/JuceLibraryCode/modules/juce_data_structures/app_properties/juce_PropertiesFile.cpp \
    src/JuceLibraryCode/modules/juce_data_structures/app_properties/juce_ApplicationProperties.cpp \
    src/JuceLibraryCode/modules/juce_data_structures/undomanager/juce_UndoManager.cpp \
    src/JuceLibraryCode/modules/juce_data_structures/values/juce_ValueTree.cpp \
    src/JuceLibraryCode/modules/juce_data_structures/values/juce_ValueTreeSynchroniser.cpp \
    src/JuceLibraryCode/modules/juce_data_structures/values/juce_Value.cpp \
    src/JuceLibraryCode/modules/juce_events/juce_events.cpp \
    src/JuceLibraryCode/modules/juce_events/broadcasters/juce_ChangeBroadcaster.cpp \
    src/JuceLibraryCode/modules/juce_events/broadcasters/juce_AsyncUpdater.cpp \
    src/JuceLibraryCode/modules/juce_events/broadcasters/juce_ActionBroadcaster.cpp \
    src/JuceLibraryCode/modules/juce_events/interprocess/juce_InterprocessConnectionServer.cpp \
    src/JuceLibraryCode/modules/juce_events/interprocess/juce_InterprocessConnection.cpp \
    src/JuceLibraryCode/modules/juce_events/messages/juce_MessageManager.cpp \
    src/JuceLibraryCode/modules/juce_events/messages/juce_MessageListener.cpp \
    src/JuceLibraryCode/modules/juce_events/messages/juce_DeletedAtShutdown.cpp \
    src/JuceLibraryCode/modules/juce_events/messages/juce_ApplicationBase.cpp \
    src/JuceLibraryCode/modules/juce_events/native/juce_win32_Messaging.cpp \
    src/JuceLibraryCode/modules/juce_events/native/juce_linux_Messaging.cpp \
    src/JuceLibraryCode/modules/juce_events/native/juce_android_Messaging.cpp \
    src/JuceLibraryCode/modules/juce_events/timers/juce_Timer.cpp \
    src/JuceLibraryCode/modules/juce_events/timers/juce_MultiTimer.cpp \
    src/JuceLibraryCode/modules/juce_audio_devices/native/relay_libjack.cpp \
    src/main.cpp \
    src/mainwindow.cpp \
    src/wavegraphicsview.cpp \
    src/waveformitem.cpp \
    src/optionsdialog.cpp \
    src/audiofilehandler.cpp \
    src/sampleraudiosource.cpp \
    src/shurikensampler.cpp \
    src/slicepointitem.cpp \
    src/commands.cpp \
    src/rubberbandaudiosource.cpp \
    src/audioanalyser.cpp \
    src/globals.cpp \
    src/helpform.cpp \
    src/applygaindialog.cpp \
    src/directoryvalidator.cpp \
    src/signallistener.cpp \
    src/applygainrampdialog.cpp \
    src/zipper.cpp \
    src/aboutdialog.cpp \
    src/exportdialog.cpp \
    src/messageboxes.cpp \
    src/textfilehandler.cpp \
    src/akaifilehandler.cpp \
    src/midifilehandler.cpp \
    src/mainwindowfilehandling.cpp \
    src/confirmbpmdialog.cpp \
    src/offlinetimestretcher.cpp \
    src/wavegraphicsscene.cpp \
    src/nsmlistenerthread.cpp \
    src/jackoutputsdialog.cpp \
    src/sampleutils.cpp \
    src/Graffik_Legacy/basiceventfilter.cpp \
    src/Graffik_Legacy/skinneddial.cpp
HEADERS += src/JuceLibraryCode/JuceHeader.h \
    src/JuceLibraryCode/AppConfig.h \
    src/JuceLibraryCode/modules/juce_audio_basics/juce_audio_basics.h \
    src/JuceLibraryCode/modules/juce_audio_basics/buffers/juce_AudioDataConverters.h \
    src/JuceLibraryCode/modules/juce_audio_basics/buffers/juce_FloatVectorOperations.h \
    src/JuceLibraryCode/modules/juce_audio_basics/buffers/juce_AudioSampleBuffer.h \
    src/JuceLibraryCode/modules/juce_audio_basics/effects/juce_Reverb.h \
    src/JuceLibraryCode/modules/juce_audio_basics/effects/juce_LagrangeInterpolator.h \
    src/JuceLibraryCode/modules/juce_audio_basics/effects/juce_IIRFilter.h \
    src/JuceLibraryCode/modules/juce_audio_basics/effects/juce_Decibels.h \
    src/JuceLibraryCode/modules/juce_audio_basics/effects/juce_LinearSmoothedValue.h \
    src/JuceLibraryCode/modules/juce_audio_basics/effects/juce_FFT.h \
    src/JuceLibraryCode/modules/juce_audio_basics/effects/juce_CatmullRomInterpolator.h \
    src/JuceLibraryCode/modules/juce_audio_basics/midi/juce_MidiRPN.h \
    src/JuceLibraryCode/modules/juce_audio_basics/midi/juce_MidiMessageSequence.h \
    src/JuceLibraryCode/modules/juce_audio_basics/midi/juce_MidiMessage.h \
    src/JuceLibraryCode/modules/juce_audio_basics/midi/juce_MidiKeyboardState.h \
    src/JuceLibraryCode/modules/juce_audio_basics/midi/juce_MidiFile.h \
    src/JuceLibraryCode/modules/juce_audio_basics/midi/juce_MidiBuffer.h \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPEInstrument.h \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPEMessages.h \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPENote.h \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPESynthesiser.h \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPESynthesiserBase.h \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPESynthesiserVoice.h \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPEValue.h \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPEZone.h \
    src/JuceLibraryCode/modules/juce_audio_basics/mpe/juce_MPEZoneLayout.h \
    src/JuceLibraryCode/modules/juce_audio_basics/sources/juce_ToneGeneratorAudioSource.h \
    src/JuceLibraryCode/modules/juce_audio_basics/sources/juce_ReverbAudioSource.h \
    src/JuceLibraryCode/modules/juce_audio_basics/sources/juce_ResamplingAudioSource.h \
    src/JuceLibraryCode/modules/juce_audio_basics/sources/juce_PositionableAudioSource.h \
    src/JuceLibraryCode/modules/juce_audio_basics/sources/juce_MixerAudioSource.h \
    src/JuceLibraryCode/modules/juce_audio_basics/sources/juce_IIRFilterAudioSource.h \
    src/JuceLibraryCode/modules/juce_audio_basics/sources/juce_ChannelRemappingAudioSource.h \
    src/JuceLibraryCode/modules/juce_audio_basics/sources/juce_BufferingAudioSource.h \
    src/JuceLibraryCode/modules/juce_audio_basics/sources/juce_AudioSource.h \
    src/JuceLibraryCode/modules/juce_audio_basics/synthesisers/juce_Synthesiser.h \
    src/JuceLibraryCode/modules/juce_audio_devices/juce_audio_devices.h \
    src/JuceLibraryCode/modules/juce_audio_devices/audio_cd/juce_AudioCDReader.h \
    src/JuceLibraryCode/modules/juce_audio_devices/audio_cd/juce_AudioCDBurner.h \
    src/JuceLibraryCode/modules/juce_audio_devices/audio_io/juce_SystemAudioVolume.h \
    src/JuceLibraryCode/modules/juce_audio_devices/audio_io/juce_AudioIODeviceType.h \
    src/JuceLibraryCode/modules/juce_audio_devices/audio_io/juce_AudioIODevice.h \
    src/JuceLibraryCode/modules/juce_audio_devices/audio_io/juce_AudioDeviceManager.h \
    src/JuceLibraryCode/modules/juce_audio_devices/midi_io/juce_MidiOutput.h \
    src/JuceLibraryCode/modules/juce_audio_devices/midi_io/juce_MidiMessageCollector.h \
    src/JuceLibraryCode/modules/juce_audio_devices/midi_io/juce_MidiInput.h \
    src/JuceLibraryCode/modules/juce_audio_devices/native/juce_MidiDataConcatenator.h \
    src/JuceLibraryCode/modules/juce_audio_devices/native/linux_midi.h \
    src/JuceLibraryCode/modules/juce_audio_devices/sources/juce_AudioTransportSource.h \
    src/JuceLibraryCode/modules/juce_audio_devices/sources/juce_AudioSourcePlayer.h \
    src/JuceLibraryCode/modules/juce_core/juce_core.h \
    src/JuceLibraryCode/modules/juce_core/containers/juce_Variant.h \
    src/JuceLibraryCode/modules/juce_core/containers/juce_SparseSet.h \
    src/JuceLibraryCode/modules/juce_core/containers/juce_SortedSet.h \
    src/JuceLibraryCode/modules/juce_core/containers/juce_ScopedValueSetter.h \
    src/JuceLibraryCode/modules/juce_core/containers/juce_ReferenceCountedArray.h \
    src/JuceLibraryCode/modules/juce_core/containers/juce_PropertySet.h \
    src/JuceLibraryCode/modules/juce_core/containers/juce_OwnedArray.h \
    src/JuceLibraryCode/modules/juce_core/containers/juce_NamedValueSet.h \
    src/JuceLibraryCode/modules/juce_core/containers/juce_ListenerList.h \
    src/JuceLibraryCode/modules/juce_core/containers/juce_LinkedListPointer.h \
    src/JuceLibraryCode/modules/juce_core/containers/juce_HashMap.h \
    src/JuceLibraryCode/modules/juce_core/containers/juce_ElementComparator.h \
    src/JuceLibraryCode/modules/juce_core/containers/juce_DynamicObject.h \
    src/JuceLibraryCode/modules/juce_core/containers/juce_ArrayAllocationBase.h \
    src/JuceLibraryCode/modules/juce_core/containers/juce_Array.h \
    src/JuceLibraryCode/modules/juce_core/containers/juce_AbstractFifo.h \
    src/JuceLibraryCode/modules/juce_core/files/juce_TemporaryFile.h \
    src/JuceLibraryCode/modules/juce_core/files/juce_MemoryMappedFile.h \
    src/JuceLibraryCode/modules/juce_core/files/juce_FileSearchPath.h \
    src/JuceLibraryCode/modules/juce_core/files/juce_FileOutputStream.h \
    src/JuceLibraryCode/modules/juce_core/files/juce_FileInputStream.h \
    src/JuceLibraryCode/modules/juce_core/files/juce_File.h \
    src/JuceLibraryCode/modules/juce_core/files/juce_DirectoryIterator.h \
    src/JuceLibraryCode/modules/juce_core/logging/juce_Logger.h \
    src/JuceLibraryCode/modules/juce_core/logging/juce_FileLogger.h \
    src/JuceLibraryCode/modules/juce_core/maths/juce_Range.h \
    src/JuceLibraryCode/modules/juce_core/maths/juce_Random.h \
    src/JuceLibraryCode/modules/juce_core/maths/juce_NormalisableRange.h \
    src/JuceLibraryCode/modules/juce_core/maths/juce_MathsFunctions.h \
    src/JuceLibraryCode/modules/juce_core/maths/juce_Expression.h \
    src/JuceLibraryCode/modules/juce_core/maths/juce_BigInteger.h \
    src/JuceLibraryCode/modules/juce_core/memory/juce_WeakReference.h \
    src/JuceLibraryCode/modules/juce_core/memory/juce_Singleton.h \
    src/JuceLibraryCode/modules/juce_core/memory/juce_ScopedPointer.h \
    src/JuceLibraryCode/modules/juce_core/memory/juce_SharedResourcePointer.h \
    src/JuceLibraryCode/modules/juce_core/memory/juce_ReferenceCountedObject.h \
    src/JuceLibraryCode/modules/juce_core/memory/juce_OptionalScopedPointer.h \
    src/JuceLibraryCode/modules/juce_core/memory/juce_MemoryBlock.h \
    src/JuceLibraryCode/modules/juce_core/memory/juce_Memory.h \
    src/JuceLibraryCode/modules/juce_core/memory/juce_LeakedObjectDetector.h \
    src/JuceLibraryCode/modules/juce_core/memory/juce_HeapBlock.h \
    src/JuceLibraryCode/modules/juce_core/memory/juce_ByteOrder.h \
    src/JuceLibraryCode/modules/juce_core/memory/juce_Atomic.h \
    src/JuceLibraryCode/modules/juce_core/misc/juce_WindowsRegistry.h \
    src/JuceLibraryCode/modules/juce_core/misc/juce_Uuid.h \
    src/JuceLibraryCode/modules/juce_core/misc/juce_RuntimePermissions.h \
    src/JuceLibraryCode/modules/juce_core/misc/juce_Result.h \
    src/JuceLibraryCode/modules/juce_core/native/juce_win32_ComSmartPtr.h \
    src/JuceLibraryCode/modules/juce_core/native/juce_posix_SharedCode.h \
    src/JuceLibraryCode/modules/juce_core/native/juce_osx_ObjCHelpers.h \
    src/JuceLibraryCode/modules/juce_core/native/juce_mac_ClangBugWorkaround.h \
    src/JuceLibraryCode/modules/juce_core/native/juce_BasicNativeHeaders.h \
    src/JuceLibraryCode/modules/juce_core/native/juce_android_JNIHelpers.h \
    src/JuceLibraryCode/modules/juce_core/network/juce_URL.h \
    src/JuceLibraryCode/modules/juce_core/network/juce_Socket.h \
    src/JuceLibraryCode/modules/juce_core/network/juce_NamedPipe.h \
    src/JuceLibraryCode/modules/juce_core/network/juce_MACAddress.h \
    src/JuceLibraryCode/modules/juce_core/network/juce_IPAddress.h \
    src/JuceLibraryCode/modules/juce_core/streams/juce_SubregionStream.h \
    src/JuceLibraryCode/modules/juce_core/streams/juce_OutputStream.h \
    src/JuceLibraryCode/modules/juce_core/streams/juce_MemoryOutputStream.h \
    src/JuceLibraryCode/modules/juce_core/streams/juce_MemoryInputStream.h \
    src/JuceLibraryCode/modules/juce_core/streams/juce_InputStream.h \
    src/JuceLibraryCode/modules/juce_core/streams/juce_InputSource.h \
    src/JuceLibraryCode/modules/juce_core/streams/juce_FileInputSource.h \
    src/JuceLibraryCode/modules/juce_core/streams/juce_BufferedInputStream.h \
    src/JuceLibraryCode/modules/juce_core/system/juce_TargetPlatform.h \
    src/JuceLibraryCode/modules/juce_core/system/juce_SystemStats.h \
    src/JuceLibraryCode/modules/juce_core/system/juce_StandardHeader.h \
    src/JuceLibraryCode/modules/juce_core/system/juce_PlatformDefs.h \
    src/JuceLibraryCode/modules/juce_core/system/juce_CompilerSupport.h \
    src/JuceLibraryCode/modules/juce_core/text/juce_TextDiff.h \
    src/JuceLibraryCode/modules/juce_core/text/juce_StringPool.h \
    src/JuceLibraryCode/modules/juce_core/text/juce_StringPairArray.h \
    src/JuceLibraryCode/modules/juce_core/text/juce_StringArray.h \
    src/JuceLibraryCode/modules/juce_core/text/juce_String.h \
    src/JuceLibraryCode/modules/juce_core/text/juce_NewLine.h \
    src/JuceLibraryCode/modules/juce_core/text/juce_LocalisedStrings.h \
    src/JuceLibraryCode/modules/juce_core/text/juce_Identifier.h \
    src/JuceLibraryCode/modules/juce_core/text/juce_CharPointer_UTF32.h \
    src/JuceLibraryCode/modules/juce_core/text/juce_CharPointer_UTF16.h \
    src/JuceLibraryCode/modules/juce_core/text/juce_CharPointer_UTF8.h \
    src/JuceLibraryCode/modules/juce_core/text/juce_CharPointer_ASCII.h \
    src/JuceLibraryCode/modules/juce_core/text/juce_CharacterFunctions.h \
    src/JuceLibraryCode/modules/juce_core/text/juce_Base64.h \
    src/JuceLibraryCode/modules/juce_core/threads/juce_WaitableEvent.h \
    src/JuceLibraryCode/modules/juce_core/threads/juce_TimeSliceThread.h \
    src/JuceLibraryCode/modules/juce_core/threads/juce_ThreadPool.h \
    src/JuceLibraryCode/modules/juce_core/threads/juce_ThreadLocalValue.h \
    src/JuceLibraryCode/modules/juce_core/threads/juce_Thread.h \
    src/JuceLibraryCode/modules/juce_core/threads/juce_SpinLock.h \
    src/JuceLibraryCode/modules/juce_core/threads/juce_ScopedWriteLock.h \
    src/JuceLibraryCode/modules/juce_core/threads/juce_ScopedReadLock.h \
    src/JuceLibraryCode/modules/juce_core/threads/juce_ScopedLock.h \
    src/JuceLibraryCode/modules/juce_core/threads/juce_ReadWriteLock.h \
    src/JuceLibraryCode/modules/juce_core/threads/juce_Process.h \
    src/JuceLibraryCode/modules/juce_core/threads/juce_InterProcessLock.h \
    src/JuceLibraryCode/modules/juce_core/threads/juce_HighResolutionTimer.h \
    src/JuceLibraryCode/modules/juce_core/threads/juce_DynamicLibrary.h \
    src/JuceLibraryCode/modules/juce_core/threads/juce_CriticalSection.h \
    src/JuceLibraryCode/modules/juce_core/threads/juce_ChildProcess.h \
    src/JuceLibraryCode/modules/juce_core/time/juce_Time.h \
    src/JuceLibraryCode/modules/juce_core/time/juce_RelativeTime.h \
    src/JuceLibraryCode/modules/juce_core/time/juce_PerformanceCounter.h \
    src/JuceLibraryCode/modules/juce_core/unit_tests/juce_UnitTest.h \
    src/JuceLibraryCode/modules/juce_core/xml/juce_XmlElement.h \
    src/JuceLibraryCode/modules/juce_core/xml/juce_XmlDocument.h \
    src/JuceLibraryCode/modules/juce_core/zip/juce_ZipFile.h \
    src/JuceLibraryCode/modules/juce_core/zip/juce_GZIPDecompressorInputStream.h \
    src/JuceLibraryCode/modules/juce_core/zip/juce_GZIPCompressorOutputStream.h \
    src/JuceLibraryCode/modules/juce_core/zip/zlib/zutil.h \
    src/JuceLibraryCode/modules/juce_core/zip/zlib/zlib.h \
    src/JuceLibraryCode/modules/juce_core/zip/zlib/zconf.in.h \
    src/JuceLibraryCode/modules/juce_core/zip/zlib/zconf.h \
    src/JuceLibraryCode/modules/juce_core/zip/zlib/trees.h \
    src/JuceLibraryCode/modules/juce_core/zip/zlib/inftrees.h \
    src/JuceLibraryCode/modules/juce_core/zip/zlib/inflate.h \
    src/JuceLibraryCode/modules/juce_core/zip/zlib/inffixed.h \
    src/JuceLibraryCode/modules/juce_core/zip/zlib/inffast.h \
    src/JuceLibraryCode/modules/juce_core/zip/zlib/deflate.h \
    src/JuceLibraryCode/modules/juce_core/zip/zlib/crc32.h \
    src/JuceLibraryCode/modules/juce_core/javascript/juce_JSON.h \
    src/JuceLibraryCode/modules/juce_core/javascript/juce_Javascript.h \
    src/JuceLibraryCode/modules/juce_data_structures/juce_data_structures.h \
    src/JuceLibraryCode/modules/juce_data_structures/app_properties/juce_PropertiesFile.h \
    src/JuceLibraryCode/modules/juce_data_structures/app_properties/juce_ApplicationProperties.h \
    src/JuceLibraryCode/modules/juce_data_structures/undomanager/juce_UndoManager.h \
    src/JuceLibraryCode/modules/juce_data_structures/undomanager/juce_UndoableAction.h \
    src/JuceLibraryCode/modules/juce_data_structures/values/juce_ValueTree.h \
    src/JuceLibraryCode/modules/juce_data_structures/values/juce_ValueTreeSynchroniser.h \
    src/JuceLibraryCode/modules/juce_data_structures/values/juce_Value.h \
    src/JuceLibraryCode/modules/juce_events/juce_events.h \
    src/JuceLibraryCode/modules/juce_events/broadcasters/juce_ChangeListener.h \
    src/JuceLibraryCode/modules/juce_events/broadcasters/juce_ChangeBroadcaster.h \
    src/JuceLibraryCode/modules/juce_events/broadcasters/juce_AsyncUpdater.h \
    src/JuceLibraryCode/modules/juce_events/broadcasters/juce_ActionListener.h \
    src/JuceLibraryCode/modules/juce_events/broadcasters/juce_ActionBroadcaster.h \
    src/JuceLibraryCode/modules/juce_events/interprocess/juce_InterprocessConnectionServer.h \
    src/JuceLibraryCode/modules/juce_events/interprocess/juce_InterprocessConnection.h \
    src/JuceLibraryCode/modules/juce_events/messages/juce_NotificationType.h \
    src/JuceLibraryCode/modules/juce_events/messages/juce_MountedVolumeListChangeDetector.h \
    src/JuceLibraryCode/modules/juce_events/messages/juce_MessageManager.h \
    src/JuceLibraryCode/modules/juce_events/messages/juce_MessageListener.h \
    src/JuceLibraryCode/modules/juce_events/messages/juce_Message.h \
    src/JuceLibraryCode/modules/juce_events/messages/juce_DeletedAtShutdown.h \
    src/JuceLibraryCode/modules/juce_events/messages/juce_CallbackMessage.h \
    src/JuceLibraryCode/modules/juce_events/messages/juce_ApplicationBase.h \
    src/JuceLibraryCode/modules/juce_events/native/juce_win32_HiddenMessageWindow.h \
    src/JuceLibraryCode/modules/juce_events/native/juce_ScopedXLock.h \
    src/JuceLibraryCode/modules/juce_events/native/juce_osx_MessageQueue.h \
    src/JuceLibraryCode/modules/juce_events/timers/juce_Timer.h \
    src/JuceLibraryCode/modules/juce_events/timers/juce_MultiTimer.h \
    src/mainwindow.h \
    src/wavegraphicsview.h \
    src/waveformitem.h \
    src/optionsdialog.h \
    src/audiofilehandler.h \
    src/samplebuffer.h \
    src/sampleraudiosource.h \
    src/shurikensampler.h \
    src/slicepointitem.h \
    src/commands.h \
    src/simplesynth.h \
    src/globals.h \
    src/rubberbandaudiosource.h \
    src/audioanalyser.h \
    src/helpform.h \
    src/applygaindialog.h \
    src/directoryvalidator.h \
    src/signallistener.h \
    src/applygainrampdialog.h \
    src/zipper.h \
    src/aboutdialog.h \
    src/exportdialog.h \
    src/messageboxes.h \
    src/textfilehandler.h \
    src/akaifilehandler.h \
    src/midifilehandler.h \
    src/confirmbpmdialog.h \
    src/offlinetimestretcher.h \
    src/wavegraphicsscene.h \
    src/nonlib/nsm.h \
    src/nsmlistenerthread.h \
    src/jackoutputsdialog.h \
    src/sampleutils.h \
    src/Graffik_Legacy/basiceventfilter.h \
    src/Graffik_Legacy/skinneddial.h
FORMS += src/mainwindow.ui \
    src/optionsdialog.ui \
    src/helpform.ui \
    src/applygaindialog.ui \
    src/applygainrampdialog.ui \
    src/aboutdialog.ui \
    src/exportdialog.ui \
    src/confirmbpmdialog.ui \
    src/jackoutputsdialog.ui
INCLUDEPATH += src \
    src/SndLibShuriken \
    src/JuceLibraryCode
LIBS += -Llib \
    -lsndlib_shuriken \
    -laubio \
    -lrubberband \
    -L/usr/X11R6/lib \
    -lX11 \
    -lasound \
    -ldl \
    -lpthread \
    -lrt \
    -lsndfile \
    -lsamplerate \
    -llo
unix:DEFINES += "LINUX=1"
CONFIG(debug, debug|release) { 
    DESTDIR = $$OUT_PWD/debug
    DEFINES += "DEBUG=1" \
        "_DEBUG=1"
}
else { 
    DESTDIR = $$OUT_PWD/release
    DEFINES += "NDEBUG=1"
}
OBJECTS_DIR = $${DESTDIR}/.obj
MOC_DIR = $${DESTDIR}/.moc
RCC_DIR = $${DESTDIR}/.rcc
UI_DIR = $${DESTDIR}/.ui
RESOURCES = resources.qrc

# -------------------------------------------------
# Install
# -------------------------------------------------
target.path = $$PREFIX/bin
INSTALLS += target

//
//  VST3Factory.cpp
//  VST3NetSend
//
//  Created by Vlad Gorloff on 06.01.13.
//  Copyright (c) 2013 Vlad Gorloff. All rights reserved.
//

BEGIN_FACTORY_DEF (GV_VENDOR, GV_URL, GV_EMAIL)

DEF_CLASS2 (INLINE_UID_FROM_FUID(GV::NetSendProcessorUID),
            PClassInfo::kManyInstances,
            kVstAudioEffectClass,
            GV_PLUGIN_NAME,
            Steinberg::Vst::kDistributable,
            Steinberg::Vst::PlugType::kFxTools,
            GV_FULL_VERSION_STR,            // Plug-in version (to be changed)
            kVstVersionString,
            GV::NetSendProcessor::createInstance)

DEF_CLASS2 (INLINE_UID_FROM_FUID(GV::NetSendControllerUID),
            PClassInfo::kManyInstances,
            kVstComponentControllerClass,
            GV_PLUGIN_NAME "Controller",	// controller name (could be the same than component name)
            0,                              // not used here
            "",                             // not used here
            GV_FULL_VERSION_STR,            // Plug-in version (to be changed)
            kVstVersionString,
            GV::NetSendController::createInstance)


END_FACTORY

bool InitModule () { return true; }
bool DeinitModule () { return true; }
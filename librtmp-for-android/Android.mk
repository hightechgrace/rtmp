LOCAL_PATH:= $(call my-dir)

#################################################################################################################
include $(CLEAR_VARS)
LOCAL_MODULE    := librtmp

LOCAL_SRC_FILES := amf.c \
				hashswf.c \
				i386.c \
				log.c \
				parseurl.c \
				rtmp.c 

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)

#LOCAL_SDK_VERSION   := 9
#LOCAL_ARM_MODE := arm
LOCAL_STATIC_LIBRARIES := 
LOCAL_SHARED_LIBRARIES :=
LOCAL_LDLIBS := -llog -landroid -ljnigraphics

LOCAL_CFLAGS += -DNO_CRYPTO
LOCAL_CPPFLAGS += $(JNI_CFLAGS)

include $(BUILD_STATIC_LIBRARY)

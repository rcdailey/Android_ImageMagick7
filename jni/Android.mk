LOCAL_PATH := $(call my-dir)

IMAGE_MAGICK		:= ImageMagick-7.0.5-2/
JPEG_SRC_PATH 		:= jpeg-9b/
PNG_SRC_PATH 		:= libpng-1.5.28/
TIFF_SRC_PATH 		:= tiff-3.9.7/libtiff/

#libjpeg +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
include $(CLEAR_VARS)

LOCAL_MODULE := libjpeg
LOCAL_MODULE_FILENAME := libjpegobj

LOCAL_C_INCLUDES  :=  \
	$(LOCAL_PATH)/$(JPEG_SRC_PATH)

LOCAL_SRC_FILES := \
	${JPEG_SRC_PATH}jcapimin.c \
	${JPEG_SRC_PATH}jcapistd.c \
	${JPEG_SRC_PATH}jccoefct.c \
	${JPEG_SRC_PATH}jccolor.c \
	${JPEG_SRC_PATH}jcdctmgr.c \
	${JPEG_SRC_PATH}jchuff.c \
	${JPEG_SRC_PATH}jcinit.c \
	${JPEG_SRC_PATH}jcmainct.c \
	${JPEG_SRC_PATH}jcmarker.c \
	${JPEG_SRC_PATH}jcmaster.c \
	${JPEG_SRC_PATH}jcomapi.c \
	${JPEG_SRC_PATH}jcparam.c \
	${JPEG_SRC_PATH}jcprepct.c \
	${JPEG_SRC_PATH}jcsample.c \
	${JPEG_SRC_PATH}jctrans.c \
	${JPEG_SRC_PATH}jdapimin.c \
	${JPEG_SRC_PATH}jdapistd.c \
	${JPEG_SRC_PATH}jdatadst.c \
	${JPEG_SRC_PATH}jdatasrc.c \
	${JPEG_SRC_PATH}jdcoefct.c \
	${JPEG_SRC_PATH}jdcolor.c \
	${JPEG_SRC_PATH}jddctmgr.c \
	${JPEG_SRC_PATH}jdhuff.c \
	${JPEG_SRC_PATH}jdinput.c \
	${JPEG_SRC_PATH}jdmainct.c \
	${JPEG_SRC_PATH}jdmarker.c \
	${JPEG_SRC_PATH}jdmaster.c \
	${JPEG_SRC_PATH}jdmerge.c \
	${JPEG_SRC_PATH}jdpostct.c \
	${JPEG_SRC_PATH}jdsample.c \
	${JPEG_SRC_PATH}jdtrans.c \
	${JPEG_SRC_PATH}jerror.c \
	${JPEG_SRC_PATH}jfdctflt.c \
	${JPEG_SRC_PATH}jfdctfst.c \
	${JPEG_SRC_PATH}jfdctint.c \
	${JPEG_SRC_PATH}jidctflt.c \
	${JPEG_SRC_PATH}jidctfst.c \
	${JPEG_SRC_PATH}jidctint.c \
	${JPEG_SRC_PATH}jquant1.c \
	${JPEG_SRC_PATH}jquant2.c \
	${JPEG_SRC_PATH}jutils.c \
	${JPEG_SRC_PATH}jmemmgr.c \
	${JPEG_SRC_PATH}jcarith.c \
	${JPEG_SRC_PATH}jdarith.c \
	${JPEG_SRC_PATH}jaricom.c \
	${JPEG_SRC_PATH}jmemnobs.c
	
include $(BUILD_STATIC_LIBRARY)  
#libjpeg ---------------------------------------------------------------

#libtiff +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
include $(CLEAR_VARS)

LOCAL_MODULE    := libtiff
LOCAL_MODULE_FILENAME := libtiffobj
LOCAL_C_INCLUDES  :=  \
	$(LOCAL_PATH)/$(TIFF_SRC_PATH) \
	$(LOCAL_PATH)/$(JPEG_SRC_PATH)

LOCAL_SRC_FILES := \
	${TIFF_SRC_PATH}mkg3states.c \
	${TIFF_SRC_PATH}tif_aux.c \
	${TIFF_SRC_PATH}tif_close.c \
	${TIFF_SRC_PATH}tif_codec.c \
	${TIFF_SRC_PATH}tif_color.c \
	${TIFF_SRC_PATH}tif_compress.c \
	${TIFF_SRC_PATH}tif_dir.c \
	${TIFF_SRC_PATH}tif_dirinfo.c \
	${TIFF_SRC_PATH}tif_dirread.c \
	${TIFF_SRC_PATH}tif_dirwrite.c \
	${TIFF_SRC_PATH}tif_dumpmode.c \
	${TIFF_SRC_PATH}tif_error.c \
	${TIFF_SRC_PATH}tif_extension.c \
	${TIFF_SRC_PATH}tif_fax3.c \
	${TIFF_SRC_PATH}tif_fax3sm.c \
	${TIFF_SRC_PATH}tif_flush.c \
	${TIFF_SRC_PATH}tif_getimage.c \
	${TIFF_SRC_PATH}tif_jbig.c \
	${TIFF_SRC_PATH}tif_jpeg.c \
	${TIFF_SRC_PATH}tif_luv.c \
	${TIFF_SRC_PATH}tif_lzw.c \
	${TIFF_SRC_PATH}tif_next.c \
	${TIFF_SRC_PATH}tif_ojpeg.c \
	${TIFF_SRC_PATH}tif_open.c \
	${TIFF_SRC_PATH}tif_packbits.c \
	${TIFF_SRC_PATH}tif_pixarlog.c \
	${TIFF_SRC_PATH}tif_predict.c \
	${TIFF_SRC_PATH}tif_print.c \
	${TIFF_SRC_PATH}tif_read.c \
	${TIFF_SRC_PATH}tif_strip.c \
	${TIFF_SRC_PATH}tif_swab.c \
	${TIFF_SRC_PATH}tif_thunder.c \
	${TIFF_SRC_PATH}tif_tile.c \
	${TIFF_SRC_PATH}tif_unix.c \
	${TIFF_SRC_PATH}tif_version.c \
	${TIFF_SRC_PATH}tif_warning.c \
	${TIFF_SRC_PATH}tif_write.c \
	${TIFF_SRC_PATH}tif_zip.c \
	${TIFF_SRC_PATH}../port/lfind.c
	
include $(BUILD_STATIC_LIBRARY) 
#libtiff ---------------------------------------------------------------

#libpng ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
include $(CLEAR_VARS)

LOCAL_MODULE    := libpng
LOCAL_MODULE_FILENAME := libpngobj

LOCAL_C_INCLUDES  :=  \
	$(LOCAL_PATH)/$(PNG_SRC_PATH)
		
LOCAL_SRC_FILES := \
	${PNG_SRC_PATH}pngerror.c \
	${PNG_SRC_PATH}pngwio.c \
	${PNG_SRC_PATH}pngwrite.c \
	${PNG_SRC_PATH}pngwutil.c \
	${PNG_SRC_PATH}pngwtran.c \
	${PNG_SRC_PATH}pngset.c \
	${PNG_SRC_PATH}pngtrans.c \
	${PNG_SRC_PATH}example.c \
	${PNG_SRC_PATH}png.c \
	${PNG_SRC_PATH}pngrtran.c \
	${PNG_SRC_PATH}pngmem.c \
	${PNG_SRC_PATH}pngpread.c \
	${PNG_SRC_PATH}pngrutil.c \
	${PNG_SRC_PATH}pngrio.c \
	${PNG_SRC_PATH}pngget.c \
	${PNG_SRC_PATH}pngread.c \
	
include $(BUILD_STATIC_LIBRARY)	
#libpng ----------------------------------------------------------------

#Image Magick dynamic +++++++++++++++++++++++++++++++++++++++++++++++++++
include $(CLEAR_VARS)

LOCAL_MODULE    := MagickCore-7
#LOCAL_CFLAGS += -fopenmp
#LOCAL_LDFLAGS += -fopenmp
LOCAL_C_INCLUDES  :=  \
	$(LOCAL_PATH)/$(IMAGE_MAGICK) \
	$(LOCAL_PATH)/$(IMAGE_MAGICK)MagickCore \
	$(LOCAL_PATH)/$(PNG_SRC_PATH) \
	$(LOCAL_PATH)/$(JPEG_SRC_PATH) \
	$(LOCAL_PATH)/$(TIFF_SRC_PATH)


LOCAL_LDLIBS    := -L$(SYSROOT)/usr/lib -llog -lz

LOCAL_SRC_FILES := \
	$(IMAGE_MAGICK)coders/aai.c \
	$(IMAGE_MAGICK)coders/art.c \
	$(IMAGE_MAGICK)coders/avs.c \
	$(IMAGE_MAGICK)coders/bgr.c \
	$(IMAGE_MAGICK)coders/bmp.c \
	$(IMAGE_MAGICK)coders/braille.c \
	$(IMAGE_MAGICK)coders/cals.c \
	$(IMAGE_MAGICK)coders/caption.c \
	$(IMAGE_MAGICK)coders/cin.c \
	$(IMAGE_MAGICK)coders/cip.c \
	$(IMAGE_MAGICK)coders/clip.c \
	$(IMAGE_MAGICK)coders/clipboard.c \
	$(IMAGE_MAGICK)coders/cmyk.c \
	$(IMAGE_MAGICK)coders/cut.c \
	$(IMAGE_MAGICK)coders/dcm.c \
	$(IMAGE_MAGICK)coders/dds.c \
	$(IMAGE_MAGICK)coders/debug.c \
	$(IMAGE_MAGICK)coders/dib.c \
	$(IMAGE_MAGICK)coders/dng.c \
	$(IMAGE_MAGICK)coders/dps.c \
	$(IMAGE_MAGICK)coders/dpx.c \
	$(IMAGE_MAGICK)coders/emf.c \
	$(IMAGE_MAGICK)coders/ept.c \
	$(IMAGE_MAGICK)coders/exr.c \
	$(IMAGE_MAGICK)coders/fax.c \
	$(IMAGE_MAGICK)coders/fits.c \
	$(IMAGE_MAGICK)coders/fpx.c \
	$(IMAGE_MAGICK)coders/gif.c \
	$(IMAGE_MAGICK)coders/gradient.c \
	$(IMAGE_MAGICK)coders/gray.c \
	$(IMAGE_MAGICK)coders/hald.c \
	$(IMAGE_MAGICK)coders/hdr.c \
	$(IMAGE_MAGICK)coders/histogram.c \
	$(IMAGE_MAGICK)coders/hrz.c \
	$(IMAGE_MAGICK)coders/html.c \
	$(IMAGE_MAGICK)coders/icon.c \
	$(IMAGE_MAGICK)coders/info.c \
	$(IMAGE_MAGICK)coders/inline.c \
	$(IMAGE_MAGICK)coders/ipl.c \
	$(IMAGE_MAGICK)coders/jbig.c \
	$(IMAGE_MAGICK)coders/jp2.c \
	$(IMAGE_MAGICK)coders/jpeg.c \
	$(IMAGE_MAGICK)coders/label.c \
	$(IMAGE_MAGICK)coders/mac.c \
	$(IMAGE_MAGICK)coders/magick.c \
	$(IMAGE_MAGICK)coders/map.c \
	$(IMAGE_MAGICK)coders/mat.c \
	$(IMAGE_MAGICK)coders/matte.c \
	$(IMAGE_MAGICK)coders/meta.c \
	$(IMAGE_MAGICK)coders/mono.c \
	$(IMAGE_MAGICK)coders/mpc.c \
	$(IMAGE_MAGICK)coders/mpeg.c \
	$(IMAGE_MAGICK)coders/mpr.c \
	$(IMAGE_MAGICK)coders/msl.c \
	$(IMAGE_MAGICK)coders/mtv.c \
	$(IMAGE_MAGICK)coders/mvg.c \
	$(IMAGE_MAGICK)coders/null.c \
	$(IMAGE_MAGICK)coders/otb.c \
	$(IMAGE_MAGICK)coders/palm.c \
	$(IMAGE_MAGICK)coders/pattern.c \
	$(IMAGE_MAGICK)coders/pcd.c \
	$(IMAGE_MAGICK)coders/pcl.c \
	$(IMAGE_MAGICK)coders/pcx.c \
	$(IMAGE_MAGICK)coders/pdb.c \
	$(IMAGE_MAGICK)coders/pdf.c \
	$(IMAGE_MAGICK)coders/pes.c \
	$(IMAGE_MAGICK)coders/pict.c \
	$(IMAGE_MAGICK)coders/pix.c \
	$(IMAGE_MAGICK)coders/plasma.c \
	$(IMAGE_MAGICK)coders/png.c \
	$(IMAGE_MAGICK)coders/pnm.c \
	$(IMAGE_MAGICK)coders/ps.c \
	$(IMAGE_MAGICK)coders/ps2.c \
	$(IMAGE_MAGICK)coders/ps3.c \
	$(IMAGE_MAGICK)coders/psd.c \
	$(IMAGE_MAGICK)coders/pwp.c \
	$(IMAGE_MAGICK)coders/raw.c \
	$(IMAGE_MAGICK)coders/rgb.c \
	$(IMAGE_MAGICK)coders/rla.c \
	$(IMAGE_MAGICK)coders/rle.c \
	$(IMAGE_MAGICK)coders/scr.c \
	$(IMAGE_MAGICK)coders/sct.c \
	$(IMAGE_MAGICK)coders/sfw.c \
	$(IMAGE_MAGICK)coders/sgi.c \
	$(IMAGE_MAGICK)coders/stegano.c \
	$(IMAGE_MAGICK)coders/sun.c \
	$(IMAGE_MAGICK)coders/svg.c \
	$(IMAGE_MAGICK)coders/tga.c \
	$(IMAGE_MAGICK)coders/thumbnail.c \
	$(IMAGE_MAGICK)coders/tiff.c \
	$(IMAGE_MAGICK)coders/tile.c \
	$(IMAGE_MAGICK)coders/tim.c \
	$(IMAGE_MAGICK)coders/ttf.c \
	$(IMAGE_MAGICK)coders/txt.c \
	$(IMAGE_MAGICK)coders/uil.c \
	$(IMAGE_MAGICK)coders/url.c \
	$(IMAGE_MAGICK)coders/uyvy.c \
	$(IMAGE_MAGICK)coders/vicar.c \
	$(IMAGE_MAGICK)coders/vid.c \
	$(IMAGE_MAGICK)coders/viff.c \
	$(IMAGE_MAGICK)coders/wbmp.c \
	$(IMAGE_MAGICK)coders/webp.c \
	$(IMAGE_MAGICK)coders/wmf.c \
	$(IMAGE_MAGICK)coders/wpg.c \
	$(IMAGE_MAGICK)coders/x.c \
	$(IMAGE_MAGICK)coders/xbm.c \
	$(IMAGE_MAGICK)coders/xc.c \
	$(IMAGE_MAGICK)coders/xcf.c \
	$(IMAGE_MAGICK)coders/xpm.c \
	$(IMAGE_MAGICK)coders/xps.c \
	$(IMAGE_MAGICK)coders/xwd.c \
	$(IMAGE_MAGICK)coders/ycbcr.c \
	$(IMAGE_MAGICK)coders/yuv.c \
	$(IMAGE_MAGICK)coders/djvu.c \
	$(IMAGE_MAGICK)coders/fd.c \
	$(IMAGE_MAGICK)coders/jnx.c \
	$(IMAGE_MAGICK)coders/json.c \
	$(IMAGE_MAGICK)coders/mask.c \
	$(IMAGE_MAGICK)coders/miff.c \
	$(IMAGE_MAGICK)coders/pango.c \
	$(IMAGE_MAGICK)coders/rgf.c \
	$(IMAGE_MAGICK)coders/screenshot.c \
	$(IMAGE_MAGICK)coders/sixel.c \
	$(IMAGE_MAGICK)coders/vips.c \
	$(IMAGE_MAGICK)coders/pgx.c \
	$(IMAGE_MAGICK)filters/analyze.c \
	$(IMAGE_MAGICK)MagickCore/accelerate.c \
	$(IMAGE_MAGICK)MagickCore/animate.c \
	$(IMAGE_MAGICK)MagickCore/annotate.c \
	$(IMAGE_MAGICK)MagickCore/artifact.c \
	$(IMAGE_MAGICK)MagickCore/attribute.c \
	$(IMAGE_MAGICK)MagickCore/blob.c \
	$(IMAGE_MAGICK)MagickCore/cache.c \
	$(IMAGE_MAGICK)MagickCore/cache-view.c \
	$(IMAGE_MAGICK)MagickCore/channel.c \
	$(IMAGE_MAGICK)MagickCore/cipher.c \
	$(IMAGE_MAGICK)MagickCore/client.c \
	$(IMAGE_MAGICK)MagickCore/coder.c \
	$(IMAGE_MAGICK)MagickCore/color.c \
	$(IMAGE_MAGICK)MagickCore/colormap.c \
	$(IMAGE_MAGICK)MagickCore/colorspace.c \
	$(IMAGE_MAGICK)MagickCore/compare.c \
	$(IMAGE_MAGICK)MagickCore/composite.c \
	$(IMAGE_MAGICK)MagickCore/compress.c \
	$(IMAGE_MAGICK)MagickCore/configure.c \
	$(IMAGE_MAGICK)MagickCore/constitute.c \
	$(IMAGE_MAGICK)MagickCore/decorate.c \
	$(IMAGE_MAGICK)MagickCore/delegate.c \
	$(IMAGE_MAGICK)MagickCore/deprecate.c \
	$(IMAGE_MAGICK)MagickCore/display.c \
	$(IMAGE_MAGICK)MagickCore/distort.c \
	$(IMAGE_MAGICK)MagickCore/distribute-cache.c \
	$(IMAGE_MAGICK)MagickCore/draw.c \
	$(IMAGE_MAGICK)MagickCore/effect.c \
	$(IMAGE_MAGICK)MagickCore/enhance.c \
	$(IMAGE_MAGICK)MagickCore/exception.c \
	$(IMAGE_MAGICK)MagickCore/feature.c \
	$(IMAGE_MAGICK)MagickCore/fourier.c \
	$(IMAGE_MAGICK)MagickCore/fx.c \
	$(IMAGE_MAGICK)MagickCore/gem.c \
	$(IMAGE_MAGICK)MagickCore/geometry.c \
	$(IMAGE_MAGICK)MagickCore/histogram.c \
	$(IMAGE_MAGICK)MagickCore/identify.c \
	$(IMAGE_MAGICK)MagickCore/image.c \
	$(IMAGE_MAGICK)MagickCore/image-view.c \
	$(IMAGE_MAGICK)MagickCore/layer.c \
	$(IMAGE_MAGICK)MagickCore/linked-list.c \
	$(IMAGE_MAGICK)MagickCore/list.c \
	$(IMAGE_MAGICK)MagickCore/locale.c \
	$(IMAGE_MAGICK)MagickCore/log.c \
	$(IMAGE_MAGICK)MagickCore/magic.c \
	$(IMAGE_MAGICK)MagickCore/magick.c \
	$(IMAGE_MAGICK)MagickCore/matrix.c \
	$(IMAGE_MAGICK)MagickCore/memory.c \
	$(IMAGE_MAGICK)MagickCore/mime.c \
	$(IMAGE_MAGICK)MagickCore/module.c \
	$(IMAGE_MAGICK)MagickCore/monitor.c \
	$(IMAGE_MAGICK)MagickCore/montage.c \
	$(IMAGE_MAGICK)MagickCore/morphology.c \
	$(IMAGE_MAGICK)MagickCore/nt-base.c \
	$(IMAGE_MAGICK)MagickCore/nt-feature.c \
	$(IMAGE_MAGICK)MagickCore/opencl.c \
	$(IMAGE_MAGICK)MagickCore/option.c \
	$(IMAGE_MAGICK)MagickCore/paint.c \
	$(IMAGE_MAGICK)MagickCore/pixel.c \
	$(IMAGE_MAGICK)MagickCore/policy.c \
	$(IMAGE_MAGICK)MagickCore/prepress.c \
	$(IMAGE_MAGICK)MagickCore/profile.c \
	$(IMAGE_MAGICK)MagickCore/property.c \
	$(IMAGE_MAGICK)MagickCore/quantize.c \
	$(IMAGE_MAGICK)MagickCore/quantum.c \
	$(IMAGE_MAGICK)MagickCore/quantum-export.c \
	$(IMAGE_MAGICK)MagickCore/quantum-import.c \
	$(IMAGE_MAGICK)MagickCore/random.c \
	$(IMAGE_MAGICK)MagickCore/registry.c \
	$(IMAGE_MAGICK)MagickCore/resample.c \
	$(IMAGE_MAGICK)MagickCore/resize.c \
	$(IMAGE_MAGICK)MagickCore/resource.c \
	$(IMAGE_MAGICK)MagickCore/segment.c \
	$(IMAGE_MAGICK)MagickCore/semaphore.c \
	$(IMAGE_MAGICK)MagickCore/shear.c \
	$(IMAGE_MAGICK)MagickCore/signature.c \
	$(IMAGE_MAGICK)MagickCore/splay-tree.c \
	$(IMAGE_MAGICK)MagickCore/static.c \
	$(IMAGE_MAGICK)MagickCore/statistic.c \
	$(IMAGE_MAGICK)MagickCore/stream.c \
	$(IMAGE_MAGICK)MagickCore/string.c \
	$(IMAGE_MAGICK)MagickCore/thread.c \
	$(IMAGE_MAGICK)MagickCore/threshold.c \
	$(IMAGE_MAGICK)MagickCore/timer.c \
	$(IMAGE_MAGICK)MagickCore/token.c \
	$(IMAGE_MAGICK)MagickCore/transform.c \
	$(IMAGE_MAGICK)MagickCore/type.c \
	$(IMAGE_MAGICK)MagickCore/utility.c \
	$(IMAGE_MAGICK)MagickCore/version.c \
	$(IMAGE_MAGICK)MagickCore/vision.c \
	$(IMAGE_MAGICK)MagickCore/widget.c \
	$(IMAGE_MAGICK)MagickCore/xml-tree.c \
	$(IMAGE_MAGICK)MagickCore/xwindow.c \

LOCAL_STATIC_LIBRARIES := \
    libpng \
    libjpeg \
    libtiff

#include $(BUILD_STATIC_LIBRARY)
include $(BUILD_SHARED_LIBRARY)
#Image Magick dynamic --------------------------------------------------

#Image MagickWand dynamic ++++++++++++++++++++++++++++++++++++++++++++++
include $(CLEAR_VARS)

LOCAL_MODULE    := MagickWand-7

LOCAL_C_INCLUDES  :=  \
	$(LOCAL_PATH)/$(IMAGE_MAGICK) \
	$(LOCAL_PATH)/$(IMAGE_MAGICK)MagickCore \
	$(LOCAL_PATH)/$(IMAGE_MAGICK)MagickWand \
	$(LOCAL_PATH)/$(PNG_SRC_PATH) \
	$(LOCAL_PATH)/$(JPEG_SRC_PATH)


LOCAL_LDLIBS    := -L$(SYSROOT)/usr/lib -llog -lz

LOCAL_SRC_FILES := \
	$(IMAGE_MAGICK)MagickWand/animate.c \
	$(IMAGE_MAGICK)MagickWand/compare.c \
	$(IMAGE_MAGICK)MagickWand/composite.c \
	$(IMAGE_MAGICK)MagickWand/conjure.c \
	$(IMAGE_MAGICK)MagickWand/convert.c \
	$(IMAGE_MAGICK)MagickWand/deprecate.c \
	$(IMAGE_MAGICK)MagickWand/display.c \
	$(IMAGE_MAGICK)MagickWand/drawing-wand.c \
	$(IMAGE_MAGICK)MagickWand/identify.c \
	$(IMAGE_MAGICK)MagickWand/import.c \
	$(IMAGE_MAGICK)MagickWand/magick-cli.c \
	$(IMAGE_MAGICK)MagickWand/magick-image.c \
	$(IMAGE_MAGICK)MagickWand/magick-property.c \
	$(IMAGE_MAGICK)MagickWand/magick-wand.c \
	$(IMAGE_MAGICK)MagickWand/mogrify.c \
	$(IMAGE_MAGICK)MagickWand/montage.c \
	$(IMAGE_MAGICK)MagickWand/operation.c \
	$(IMAGE_MAGICK)MagickWand/pixel-iterator.c \
	$(IMAGE_MAGICK)MagickWand/pixel-wand.c \
	$(IMAGE_MAGICK)MagickWand/script-token.c \
	$(IMAGE_MAGICK)MagickWand/stream.c \
	$(IMAGE_MAGICK)MagickWand/wand.c \
	$(IMAGE_MAGICK)MagickWand/wandcli.c \
	$(IMAGE_MAGICK)MagickWand/wand-view.c \
	
LOCAL_SHARED_LIBRARIES := \
    MagickCore-7 


include $(BUILD_SHARED_LIBRARY)	
#Image MagickWand dynamic ----------------------------------------------


#Image Magick++ dynamic ++++++++++++++++++++++++++++++++++++++++++++++
include $(CLEAR_VARS)

LOCAL_MODULE    := Magick++-7
LOCAL_CFLAGS += -fexceptions
LOCAL_LDFLAGS += -fexceptions

LOCAL_C_INCLUDES  :=  \
	$(LOCAL_PATH)/$(IMAGE_MAGICK) \
	$(LOCAL_PATH)/$(IMAGE_MAGICK)MagickCore \
	$(LOCAL_PATH)/$(IMAGE_MAGICK)MagickWand \
	$(LOCAL_PATH)/$(IMAGE_MAGICK)Magick++/lib \
	$(LOCAL_PATH)/$(PNG_SRC_PATH) \
	$(LOCAL_PATH)/$(JPEG_SRC_PATH)


LOCAL_LDLIBS    := -L$(SYSROOT)/usr/lib -llog -lz

LOCAL_SRC_FILES := \
	$(IMAGE_MAGICK)Magick++/lib/Blob.cpp \
	$(IMAGE_MAGICK)Magick++/lib/BlobRef.cpp \
	$(IMAGE_MAGICK)Magick++/lib/CoderInfo.cpp \
	$(IMAGE_MAGICK)Magick++/lib/Color.cpp \
	$(IMAGE_MAGICK)Magick++/lib/Drawable.cpp \
	$(IMAGE_MAGICK)Magick++/lib/Exception.cpp \
	$(IMAGE_MAGICK)Magick++/lib/Functions.cpp \
	$(IMAGE_MAGICK)Magick++/lib/Geometry.cpp \
	$(IMAGE_MAGICK)Magick++/lib/Image.cpp \
	$(IMAGE_MAGICK)Magick++/lib/ImageRef.cpp \
	$(IMAGE_MAGICK)Magick++/lib/Montage.cpp \
	$(IMAGE_MAGICK)Magick++/lib/Options.cpp \
	$(IMAGE_MAGICK)Magick++/lib/Pixels.cpp \
	$(IMAGE_MAGICK)Magick++/lib/ResourceLimits.cpp \
	$(IMAGE_MAGICK)Magick++/lib/Statistic.cpp \
	$(IMAGE_MAGICK)Magick++/lib/STL.cpp \
	$(IMAGE_MAGICK)Magick++/lib/Thread.cpp \
	$(IMAGE_MAGICK)Magick++/lib/TypeMetric.cpp \
	
	
LOCAL_SHARED_LIBRARIES := \
    MagickCore-7 \
    MagickWand-7

#20170412 disable due to crash
#include $(BUILD_SHARED_LIBRARY)	
#Image Magick++ dynamic ----------------------------------------------
#Image util dynamic ++++++++++++++++++++++++++++++++++++++++++++++
include $(CLEAR_VARS)

LOCAL_MODULE    := magick
LOCAL_CFLAGS += -fexceptions
LOCAL_LDFLAGS += -fexceptions

LOCAL_C_INCLUDES  :=  \
	$(IMAGE_MAGICK) \
	$(IMAGE_MAGICK)MagickCore \
	$(IMAGE_MAGICK)MagickWand \
	$(IMAGE_MAGICK)Magick++/lib \
	${PNG_SRC_PATH} \
	${JPEG_SRC_PATH} \


LOCAL_LDLIBS    := -L$(SYSROOT)/usr/lib -llog -lz
LOCAL_SRC_FILES := \
	$(IMAGE_MAGICK)utilites/magick.c \

LOCAL_SHARED_LIBRARIES := \
    MagickCore-7 \
    MagickWand-7


include $(BUILD_EXECUTABLE)	

#---------------

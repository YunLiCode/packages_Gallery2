.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;
.super Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;
.source "ImageFilterTinyPlanet.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;-><init>()V

    .line 38
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    .line 54
    const-string v0, "TinyPlanet"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private applyXmp(Landroid/graphics/Bitmap;Lcom/adobe/xmp/XMPMeta;I)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "bitmapIn"    # Landroid/graphics/Bitmap;
    .param p2, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p3, "intermediateWidth"    # I

    .prologue
    .line 110
    :try_start_0
    const-string v18, "CroppedAreaImageWidthPixels"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v7

    .line 112
    .local v7, "croppedAreaWidth":I
    const-string v18, "CroppedAreaImageHeightPixels"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v6

    .line 114
    .local v6, "croppedAreaHeight":I
    const-string v18, "FullPanoWidthPixels"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v11

    .line 116
    .local v11, "fullPanoWidth":I
    const-string v18, "FullPanoHeightPixels"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v10

    .line 118
    .local v10, "fullPanoHeight":I
    const-string v18, "CroppedAreaLeftPixels"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v12

    .line 119
    .local v12, "left":I
    const-string v18, "CroppedAreaTopPixels"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    .line 121
    .local v17, "top":I
    if-eqz v11, :cond_0

    if-nez v10, :cond_1

    :cond_0
    move-object/from16 v4, p1

    .line 148
    .end local v6    # "croppedAreaHeight":I
    .end local v7    # "croppedAreaWidth":I
    .end local v10    # "fullPanoHeight":I
    .end local v11    # "fullPanoWidth":I
    .end local v12    # "left":I
    .end local v17    # "top":I
    .end local p1    # "bitmapIn":Landroid/graphics/Bitmap;
    .local v4, "bitmapIn":Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    .line 126
    .end local v4    # "bitmapIn":Landroid/graphics/Bitmap;
    .restart local v6    # "croppedAreaHeight":I
    .restart local v7    # "croppedAreaWidth":I
    .restart local v10    # "fullPanoHeight":I
    .restart local v11    # "fullPanoWidth":I
    .restart local v12    # "left":I
    .restart local v17    # "top":I
    .restart local p1    # "bitmapIn":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v13, 0x0

    .line 127
    .local v13, "paddedBitmap":Landroid/graphics/Bitmap;
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v11

    move/from16 v19, v0

    div-float v16, v18, v19

    .line 128
    .local v16, "scale":F
    :goto_1
    if-nez v13, :cond_2

    .line 130
    int-to-float v0, v11

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    mul-float v19, v19, v16

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    :try_start_1
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    goto :goto_1

    .line 133
    :catch_0
    move-exception v9

    .line 134
    .local v9, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 135
    const/high16 v18, 0x40000000

    div-float v16, v16, v18

    .line 136
    goto :goto_1

    .line 138
    .end local v9    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 140
    .local v14, "paddedCanvas":Landroid/graphics/Canvas;
    add-int v15, v12, v7

    .line 141
    .local v15, "right":I
    add-int v5, v17, v6

    .line 142
    .local v5, "bottom":I
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v0, v12

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v16

    int-to-float v0, v15

    move/from16 v20, v0

    mul-float v20, v20, v16

    int-to-float v0, v5

    move/from16 v21, v0

    mul-float v21, v21, v16

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 143
    .local v8, "destRect":Landroid/graphics/RectF;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v14, v0, v1, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_1

    .line 144
    move-object/from16 p1, v13

    .end local v5    # "bottom":I
    .end local v6    # "croppedAreaHeight":I
    .end local v7    # "croppedAreaWidth":I
    .end local v8    # "destRect":Landroid/graphics/RectF;
    .end local v10    # "fullPanoHeight":I
    .end local v11    # "fullPanoWidth":I
    .end local v12    # "left":I
    .end local v13    # "paddedBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "paddedCanvas":Landroid/graphics/Canvas;
    .end local v15    # "right":I
    .end local v16    # "scale":F
    .end local v17    # "top":I
    :goto_2
    move-object/from16 v4, p1

    .line 148
    .end local p1    # "bitmapIn":Landroid/graphics/Bitmap;
    .restart local v4    # "bitmapIn":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 145
    .end local v4    # "bitmapIn":Landroid/graphics/Bitmap;
    .restart local p1    # "bitmapIn":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v18

    goto :goto_2
.end method

.method private static getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I
    .locals 1
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 152
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "bitmapIn"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 77
    .local v11, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 78
    .local v9, "h":I
    int-to-float v0, v11

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    float-to-int v5, v0

    .line 79
    .local v5, "outputSize":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v10

    .line 80
    .local v10, "preset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    const/4 v4, 0x0

    .line 81
    .local v4, "mBitmapOut":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_0

    .line 82
    invoke-virtual {v10}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getXmpObject()Lcom/adobe/xmp/XMPMeta;

    move-result-object v12

    .line 84
    .local v12, "xmp":Lcom/adobe/xmp/XMPMeta;
    if-eqz v12, :cond_0

    .line 85
    invoke-direct {p0, p1, v12, v11}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->applyXmp(Landroid/graphics/Bitmap;Lcom/adobe/xmp/XMPMeta;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 88
    .end local v12    # "xmp":Lcom/adobe/xmp/XMPMeta;
    :cond_0
    if-eqz v4, :cond_1

    .line 89
    throw v4

    move-result v0

    if-eq v5, v0, :cond_1

    .line 90
    const/4 v4, 0x0

    .line 93
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getBitmap(II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 96
    :catch_0
    move-exception v8

    .line 97
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 98
    div-int/lit8 v5, v5, 0x2

    .line 99
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->LOGTAG:Ljava/lang/String;

    const-string v1, "No memory to create Full Tiny Planet create half"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->getZoom()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000

    div-float v6, v0, v1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->getAngle()F

    move-result v7

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IFF)V

    .line 105
    return-object v4
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;-><init>()V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IFF)V
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 1
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 59
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    .line 60
    .local v0, "parameters":Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    .line 61
    return-void
.end method

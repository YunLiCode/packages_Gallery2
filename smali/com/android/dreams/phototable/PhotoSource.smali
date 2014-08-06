.class public abstract Lcom/android/dreams/phototable/PhotoSource;
.super Ljava/lang/Object;
.source "PhotoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dreams/phototable/PhotoSource$AlbumData;,
        Lcom/android/dreams/phototable/PhotoSource$ImageData;
    }
.end annotation


# instance fields
.field private final mBadImageSkipLimit:I

.field protected final mContext:Landroid/content/Context;

.field private final mFallbackSource:Lcom/android/dreams/phototable/PhotoSource;

.field private final mImageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCropRatio:F

.field private final mMaxQueueSize:I

.field protected final mRNG:Ljava/util/Random;

.field protected final mResolver:Landroid/content/ContentResolver;

.field protected final mResources:Landroid/content/res/Resources;

.field protected final mSettings:Lcom/android/dreams/phototable/AlbumSettings;

.field protected mSourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    .line 102
    new-instance v0, Lcom/android/dreams/phototable/StockSource;

    invoke-direct {v0, p1, p2}, Lcom/android/dreams/phototable/StockSource;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dreams/phototable/PhotoSource;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/dreams/phototable/PhotoSource;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/dreams/phototable/PhotoSource;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Landroid/content/SharedPreferences;
    .param p3, "fallbackSource"    # Lcom/android/dreams/phototable/PhotoSource;

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string v0, "PhotoTable.PhotoSource"

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mSourceName:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoSource;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {p2}, Lcom/android/dreams/phototable/AlbumSettings;->getAlbumSettings(Landroid/content/SharedPreferences;)Lcom/android/dreams/phototable/AlbumSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    .line 109
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    .line 111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageQueue:Ljava/util/LinkedList;

    .line 112
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mMaxQueueSize:I

    .line 113
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x49742400

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mMaxCropRatio:F

    .line 114
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mBadImageSkipLimit:I

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageMap:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mRNG:Ljava/util/Random;

    .line 117
    iput-object p3, p0, Lcom/android/dreams/phototable/PhotoSource;->mFallbackSource:Lcom/android/dreams/phototable/PhotoSource;

    .line 118
    return-void
.end method

.method protected static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 263
    return-void
.end method


# virtual methods
.method public donePaging(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "current"    # Landroid/graphics/Bitmap;

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .line 303
    .local v0, "data":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Lcom/android/dreams/phototable/PhotoSource$ImageData;->donePaging()V

    .line 306
    :cond_0
    return-void
.end method

.method protected abstract donePaging(Lcom/android/dreams/phototable/PhotoSource$ImageData;)V
.end method

.method protected fillQueue()V
    .locals 3

    .prologue
    .line 121
    const-string v0, "PhotoTable.PhotoSource"

    const-string v1, "filling queue"

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageQueue:Ljava/util/LinkedList;

    iget v1, p0, Lcom/android/dreams/phototable/PhotoSource;->mMaxQueueSize:I

    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/dreams/phototable/PhotoSource;->findImages(I)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageQueue:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 124
    const-string v0, "PhotoTable.PhotoSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queue contains: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " items."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public abstract findAlbums()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract findImages(I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getStream(Lcom/android/dreams/phototable/PhotoSource$ImageData;I)Ljava/io/InputStream;
.end method

.method public load(Lcom/android/dreams/phototable/PhotoSource$ImageData;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "data"    # Lcom/android/dreams/phototable/PhotoSource$ImageData;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "longSide"    # I
    .param p4, "shortSide"    # I

    .prologue
    .line 158
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decoding photo resource to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/PhotoSource$ImageData;->getStream(I)Ljava/io/InputStream;

    move-result-object v13

    .line 161
    .local v13, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 163
    .local v2, "image":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 164
    .local v9, "bis":Ljava/io/BufferedInputStream;
    const/high16 v3, 0x20000

    invoke-virtual {v9, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 166
    const/4 v3, 0x1

    move-object/from16 v0, p2

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 167
    const/4 v3, 0x1

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 168
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 169
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 170
    .local v17, "rawLongSide":I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 171
    .local v18, "rawShortSide":I
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I see bounds of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v3, -0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_8

    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_8

    .line 174
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, v17

    int-to-float v4, v0

    div-float/2addr v3, v4

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 176
    .local v11, "insideRatio":F
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, v17

    int-to-float v4, v0

    div-float/2addr v3, v4

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 178
    .local v15, "outsideRatio":F
    div-float v3, v15, v11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/dreams/phototable/PhotoSource;->mMaxCropRatio:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move/from16 v16, v15

    .line 181
    .local v16, "ratio":F
    :goto_0
    move/from16 v0, v16

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 182
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 183
    const/high16 v3, 0x40000000

    mul-float v16, v16, v3

    goto :goto_0

    .end local v16    # "ratio":F
    :cond_0
    move/from16 v16, v11

    .line 178
    goto :goto_0

    .line 186
    .restart local v16    # "ratio":F
    :cond_1
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decoding with inSampleSize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->reset()V

    .line 188
    const/4 v3, 0x0

    move-object/from16 v0, p2

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 189
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v9, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 190
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 191
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 192
    if-eqz v2, :cond_7

    const/4 v3, -0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_7

    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_7

    .line 193
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, v17

    int-to-float v4, v0

    div-float/2addr v3, v4

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 196
    const/high16 v3, 0x3f800000

    sub-float v3, v16, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3f50624dd2f1a9fcL

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    .line 197
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "still too big, scaling down by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    float-to-int v3, v3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 199
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    float-to-int v3, v3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 201
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 206
    :cond_2
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->orientation:I

    if-eqz v3, :cond_4

    .line 207
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rotated by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": fixing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 209
    .local v7, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->orientation:I

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 212
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 215
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->orientation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_3

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->orientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_4

    .line 216
    :cond_3
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v20, v0

    .line 217
    .local v20, "tmp":I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 218
    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 222
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v20    # "tmp":I
    :cond_4
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "returning bitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v11    # "insideRatio":F
    .end local v15    # "outsideRatio":F
    .end local v16    # "ratio":F
    :goto_1
    if-nez v2, :cond_5

    .line 230
    const-string v4, "PhotoTable.PhotoSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stream decoding failed with no error"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v3, :cond_9

    const-string v3, " due to cancelation."

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_5
    if-eqz v13, :cond_6

    .line 245
    :try_start_1
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v17    # "rawLongSide":I
    .end local v18    # "rawShortSide":I
    :cond_6
    :goto_3
    return-object v2

    .line 224
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    .restart local v11    # "insideRatio":F
    .restart local v15    # "outsideRatio":F
    .restart local v16    # "ratio":F
    .restart local v17    # "rawLongSide":I
    .restart local v18    # "rawShortSide":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 227
    .end local v11    # "insideRatio":F
    .end local v15    # "outsideRatio":F
    .end local v16    # "ratio":F
    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    .line 230
    :cond_9
    :try_start_2
    const-string v3, "."
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 247
    :catch_0
    move-exception v19

    .line 248
    .local v19, "t":Ljava/lang/Throwable;
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 233
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v17    # "rawLongSide":I
    .end local v18    # "rawShortSide":I
    .end local v19    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v14

    .line 234
    .local v14, "ome":Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OUT OF MEMORY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    const/4 v2, 0x0

    .line 244
    if-eqz v13, :cond_6

    .line 245
    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 247
    :catch_2
    move-exception v19

    .line 248
    .restart local v19    # "t":Ljava/lang/Throwable;
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 236
    .end local v14    # "ome":Ljava/lang/OutOfMemoryError;
    .end local v19    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v10

    .line 237
    .local v10, "fnf":Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 238
    const/4 v2, 0x0

    .line 244
    if-eqz v13, :cond_6

    .line 245
    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_3

    .line 247
    :catch_4
    move-exception v19

    .line 248
    .restart local v19    # "t":Ljava/lang/Throwable;
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 239
    .end local v10    # "fnf":Ljava/io/FileNotFoundException;
    .end local v19    # "t":Ljava/lang/Throwable;
    :catch_5
    move-exception v12

    .line 240
    .local v12, "ioe":Ljava/io/IOException;
    :try_start_7
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i/o exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 241
    const/4 v2, 0x0

    .line 244
    if-eqz v13, :cond_6

    .line 245
    :try_start_8
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_3

    .line 247
    :catch_6
    move-exception v19

    .line 248
    .restart local v19    # "t":Ljava/lang/Throwable;
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 243
    .end local v12    # "ioe":Ljava/io/IOException;
    .end local v19    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    .line 244
    if-eqz v13, :cond_a

    .line 245
    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    .line 249
    :cond_a
    :goto_4
    throw v3

    .line 247
    :catch_7
    move-exception v19

    .line 248
    .restart local v19    # "t":Ljava/lang/Throwable;
    const-string v4, "PhotoTable.PhotoSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public naturalNext(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "current"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "longSide"    # I
    .param p4, "shortSide"    # I

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, "image":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .line 277
    .local v0, "data":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/android/dreams/phototable/PhotoSource$ImageData;->naturalNext()Lcom/android/dreams/phototable/PhotoSource$ImageData;

    move-result-object v2

    .line 279
    .local v2, "next":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    if-eqz v2, :cond_0

    .line 280
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/android/dreams/phototable/PhotoSource;->load(Lcom/android/dreams/phototable/PhotoSource$ImageData;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 281
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .end local v2    # "next":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    :cond_0
    return-object v1
.end method

.method protected abstract naturalNext(Lcom/android/dreams/phototable/PhotoSource$ImageData;)Lcom/android/dreams/phototable/PhotoSource$ImageData;
.end method

.method public naturalPrevious(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "current"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "longSide"    # I
    .param p4, "shortSide"    # I

    .prologue
    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, "image":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .line 291
    .local v0, "data":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    if-eqz p1, :cond_0

    .line 292
    invoke-virtual {v0}, Lcom/android/dreams/phototable/PhotoSource$ImageData;->naturalPrevious()Lcom/android/dreams/phototable/PhotoSource$ImageData;

    move-result-object v2

    .line 293
    .local v2, "prev":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/android/dreams/phototable/PhotoSource;->load(Lcom/android/dreams/phototable/PhotoSource$ImageData;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 295
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .end local v2    # "prev":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    :cond_0
    return-object v1
.end method

.method protected abstract naturalPrevious(Lcom/android/dreams/phototable/PhotoSource$ImageData;)Lcom/android/dreams/phototable/PhotoSource$ImageData;
.end method

.method public next(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "longSide"    # I
    .param p3, "shortSide"    # I

    .prologue
    .line 128
    const-string v4, "PhotoTable.PhotoSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decoding a picasa resource to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "image":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 131
    .local v2, "imageData":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    const/4 v3, 0x0

    .line 133
    .local v3, "tries":I
    :goto_0
    if-nez v1, :cond_2

    iget v4, p0, Lcom/android/dreams/phototable/PhotoSource;->mBadImageSkipLimit:I

    if-ge v3, v4, :cond_2

    .line 134
    iget-object v5, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageQueue:Ljava/util/LinkedList;

    monitor-enter v5

    .line 135
    :try_start_0
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoSource;->fillQueue()V

    .line 138
    :cond_0
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;

    move-object v2, v0

    .line 139
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/dreams/phototable/PhotoSource;->load(Lcom/android/dreams/phototable/PhotoSource$ImageData;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 142
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/4 v2, 0x0

    .line 146
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 149
    :cond_2
    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoSource;->mFallbackSource:Lcom/android/dreams/phototable/PhotoSource;

    if-eqz v4, :cond_3

    .line 150
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoSource;->mFallbackSource:Lcom/android/dreams/phototable/PhotoSource;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/dreams/phototable/PhotoSource;->findImages(I)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lcom/android/dreams/phototable/PhotoSource$ImageData;

    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/android/dreams/phototable/PhotoSource;->load(Lcom/android/dreams/phototable/PhotoSource$ImageData;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 154
    :cond_3
    return-object v1
.end method

.method protected pickRandomStart(II)I
    .locals 2
    .param p1, "total"    # I
    .param p2, "max"    # I

    .prologue
    .line 266
    if-lt p2, p1, :cond_0

    .line 267
    const/4 v0, -0x1

    .line 269
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mRNG:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sub-int v1, p1, p2

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public recycle(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "trash"    # Landroid/graphics/Bitmap;

    .prologue
    .line 309
    if-eqz p1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 313
    :cond_0
    return-void
.end method

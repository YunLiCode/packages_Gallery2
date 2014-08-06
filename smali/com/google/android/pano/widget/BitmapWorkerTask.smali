.class public Lcom/google/android/pano/widget/BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "BitmapWorkerTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/pano/widget/BitmapWorkerOptions;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected mScaled:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/BitmapWorkerTask;->mImageView:Ljava/lang/ref/WeakReference;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/pano/widget/BitmapWorkerTask;->mScaled:Z

    .line 54
    return-void
.end method

.method private static createIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "workerOptions"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 291
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 292
    .local v3, "width":I
    if-ne v3, v4, :cond_0

    .line 293
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getWidth()I

    move-result v3

    .line 295
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 296
    .local v2, "height":I
    if-ne v2, v4, :cond_1

    .line 297
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getHeight()I

    move-result v2

    .line 299
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 300
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 301
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 303
    return-object v0
.end method

.method private decodeBitmap(Ljava/io/InputStream;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "options"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    :try_start_0
    new-instance v1, Lcom/google/android/pano/util/CachedInputStream;

    invoke-direct {v1, p1}, Lcom/google/android/pano/util/CachedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 179
    .local v1, "bufferedStream":Lcom/google/android/pano/util/CachedInputStream;
    const v7, 0x7fffffff

    invoke-virtual {v1, v7}, Lcom/google/android/pano/util/CachedInputStream;->setOverrideMarkLimit(I)V

    .line 180
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 181
    .local v0, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 182
    invoke-virtual {p2}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    iput-object v7, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 183
    const/4 v7, 0x0

    invoke-static {v1, v7, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 185
    const/high16 v3, 0x3f800000

    .line 187
    .local v3, "heightScale":F
    invoke-virtual {p2}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getHeight()I

    move-result v2

    .line 188
    .local v2, "height":I
    if-lez v2, :cond_0

    .line 189
    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v7, v7

    int-to-float v8, v2

    div-float v3, v7, v8

    .line 193
    :cond_0
    const/high16 v6, 0x3f800000

    .line 195
    .local v6, "widthScale":F
    invoke-virtual {p2}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getWidth()I

    move-result v5

    .line 196
    .local v5, "width":I
    if-lez v5, :cond_1

    .line 197
    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v7, v7

    int-to-float v8, v5

    div-float v6, v7, v8

    .line 201
    :cond_1
    cmpl-float v7, v3, v6

    if-lez v7, :cond_4

    move v4, v3

    .line 210
    .local v4, "scale":F
    :goto_0
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 211
    const/high16 v7, 0x40000000

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_2

    .line 212
    float-to-int v7, v4

    iput v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 215
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/pano/util/CachedInputStream;->reset()V

    .line 216
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/google/android/pano/util/CachedInputStream;->setOverrideMarkLimit(I)V

    .line 217
    const/4 v7, 0x0

    invoke-static {v1, v7, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {p0, p2, v7}, Lcom/google/android/pano/widget/BitmapWorkerTask;->scaleBitmapIfNecessary(Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 222
    if-eqz p1, :cond_3

    .line 223
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    return-object v7

    .end local v4    # "scale":F
    :cond_4
    move v4, v6

    .line 201
    goto :goto_0

    .line 222
    .end local v0    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v1    # "bufferedStream":Lcom/google/android/pano/util/CachedInputStream;
    .end local v2    # "height":I
    .end local v3    # "heightScale":F
    .end local v5    # "width":I
    .end local v6    # "widthScale":F
    :catchall_0
    move-exception v7

    if-eqz p1, :cond_5

    .line 223
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v7
.end method

.method private getBitmapFromContent(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "options"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 249
    .local v0, "bitmapStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0, v0, p1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->decodeBitmap(Ljava/io/InputStream;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 254
    :goto_0
    return-object v1

    .line 252
    :cond_0
    const-string v1, "BitmapWorker"

    const-string v2, "Content provider returned a null InputStream when trying to open resource."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getBitmapFromHttp(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "options"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 234
    .local v2, "url":Ljava/net/URL;
    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 235
    .local v0, "connection":Ljava/net/URLConnection;
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 236
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 237
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 238
    .local v1, "in":Ljava/io/InputStream;
    invoke-direct {p0, v1, p1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->decodeBitmap(Ljava/io/InputStream;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    return-object v3

    .line 240
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    throw v3
.end method

.method private getBitmapFromResource(Landroid/content/Context;Landroid/content/Intent$ShortcutIconResource;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconResource"    # Landroid/content/Intent$ShortcutIconResource;
    .param p3, "outputOptions"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 107
    iget-object v2, p2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 108
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 110
    .local v3, "resourceName":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/pano/widget/BitmapWorkerTask;->loadDrawable(Landroid/content/Context;Landroid/content/Intent$ShortcutIconResource;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    .local v0, "drawable":Ljava/lang/Object;
    instance-of v5, v0, Ljava/io/InputStream;

    if-eqz v5, :cond_0

    .line 113
    check-cast v0, Ljava/io/InputStream;

    .end local v0    # "drawable":Ljava/lang/Object;
    invoke-direct {p0, v0, p3}, Lcom/google/android/pano/widget/BitmapWorkerTask;->decodeBitmap(Ljava/io/InputStream;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 125
    :goto_0
    return-object v4

    .line 114
    .restart local v0    # "drawable":Ljava/lang/Object;
    :cond_0
    instance-of v5, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 115
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .end local v0    # "drawable":Ljava/lang/Object;
    invoke-static {v0, p3}, Lcom/google/android/pano/widget/BitmapWorkerTask;->createIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 117
    .restart local v0    # "drawable":Ljava/lang/Object;
    :cond_1
    const-string v5, "BitmapWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBitmapFromResource failed, unrecognized resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 120
    .end local v0    # "drawable":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "BitmapWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "! NameNotFound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 124
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v5, "BitmapWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "! NotFound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static loadDrawable(Landroid/content/Context;Landroid/content/Intent$ShortcutIconResource;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/Intent$ShortcutIconResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 269
    .local v1, "resources":Landroid/content/res/Resources;
    if-nez v1, :cond_0

    .line 285
    :goto_0
    return-object v3

    .line 272
    :cond_0
    iget-object v4, p1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 273
    .local v0, "id":I
    if-nez v0, :cond_1

    .line 274
    const-string v4, "BitmapWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t get resource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in resources of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :cond_1
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 279
    .local v2, "value":Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 280
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_4

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_4

    .line 283
    :cond_3
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 285
    :cond_4
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0
.end method

.method private scaleBitmapIfNecessary(Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "outputOptions"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x1

    .line 137
    if-nez p2, :cond_1

    .line 138
    const/4 p2, 0x0

    .line 169
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p2

    .line 141
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/high16 v1, 0x3f800000

    .line 143
    .local v1, "heightScale":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 144
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 148
    :cond_2
    const/high16 v5, 0x3f800000

    .line 150
    .local v5, "widthScale":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_3

    .line 151
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 154
    :cond_3
    cmpg-float v6, v1, v5

    if-gez v6, :cond_4

    move v3, v1

    .line 155
    .local v3, "scale":F
    :goto_1
    const/high16 v6, 0x3f800000

    cmpl-float v6, v3, v6

    if-gez v6, :cond_0

    .line 158
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v4, v6

    .line 159
    .local v4, "width":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v0, v6

    .line 167
    .local v0, "height":I
    invoke-static {p2, v4, v0, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 168
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    iput-boolean v8, p0, Lcom/google/android/pano/widget/BitmapWorkerTask;->mScaled:Z

    move-object p2, v2

    .line 169
    goto :goto_0

    .end local v0    # "height":I
    .end local v2    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "scale":F
    .end local v4    # "width":I
    :cond_4
    move v3, v5

    .line 154
    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .prologue
    const/4 v2, 0x0

    .line 59
    const/4 v3, 0x0

    aget-object v1, p1, v3

    .line 62
    .local v1, "workerOptions":Lcom/google/android/pano/widget/BitmapWorkerOptions;
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getIconResource()Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getIconResource()Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->getBitmapFromResource(Landroid/content/Context;Landroid/content/Intent$ShortcutIconResource;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 89
    :goto_0
    return-object v2

    .line 66
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 67
    invoke-virtual {v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/pano/data/util/UriUtils;->isAndroidResourceUri(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/pano/data/util/UriUtils;->isShortcutIconResourceUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/pano/data/util/UriUtils;->getIconResource(Landroid/net/Uri;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->getBitmapFromResource(Landroid/content/Context;Landroid/content/Intent$ShortcutIconResource;Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/pano/data/util/UriUtils;->isWebUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->getBitmapFromHttp(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/pano/data/util/UriUtils;->isContentUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 76
    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->getBitmapFromContent(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 78
    :cond_4
    const-string v3, "BitmapWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading bitmap - unknown resource URI! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "BitmapWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_1
    const-string v3, "BitmapWorker"

    const-string v4, "Error loading bitmap - no source!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, [Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->doInBackground([Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final isScaled()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/google/android/pano/widget/BitmapWorkerTask;->mScaled:Z

    return v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/google/android/pano/widget/BitmapWorkerTask;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/google/android/pano/widget/BitmapWorkerTask;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.class public Lcom/android/gallery3d/filtershow/filters/IconUtilities;
.super Ljava/lang/Object;
.source "IconUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyFX(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "fxBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 59
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/IconUtilities$1;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/filters/IconUtilities$1;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .local v0, "fx":Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/IconUtilities$1;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getFXBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 39
    .local v0, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

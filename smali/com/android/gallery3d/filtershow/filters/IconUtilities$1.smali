.class final Lcom/android/gallery3d/filtershow/filters/IconUtilities$1;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;
.source "IconUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/filters/IconUtilities;->applyFX(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fxBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/IconUtilities$1;->val$fxBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 64
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 65
    .local v3, "h":I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/IconUtilities$1;->val$fxBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 66
    .local v5, "fxw":I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/IconUtilities$1;->val$fxBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 68
    .local v6, "fxh":I
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/IconUtilities$1;->val$fxBitmap:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/filters/IconUtilities$1;->nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;II)V

    .line 69
    return-object p1
.end method

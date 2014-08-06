.class Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;
.super Ljava/lang/Object;
.source "BitmapDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/BitmapDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapItem"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mScaled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaled"    # Z

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 49
    iput-boolean p2, p0, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;->mScaled:Z

    .line 50
    return-void
.end method
